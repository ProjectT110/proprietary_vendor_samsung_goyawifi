#!/system/bin/sh

#file_name="$NVM_ROOT_DIR/COMCfg.csv"
#file_exist=`ls $file_name`
#case "$file_exist" in
#    $file_name)
#    echo "$NVM_ROOT_DIR/COMCfg.csv";
#    ;;
#    *)
#	cat /marvell/tel/configuration/COMCfg.csv > $NVM_ROOT_DIR/COMCfg.csv;
#	cat /marvell/tel/configuration/platform.nvm > $NVM_ROOT_DIR/platform.nvm;
#	cat /marvell/tel/configuration/afcDacTable.nvm > $NVM_ROOT_DIR/afcDacTable.nvm;
#    ;;
#esac

#check NVM partition on eMMC
mk_ext4_fs="/system/bin/make_ext4fs"

nvm_partition="mmcblk0p12"

nvm_partition_dev="/dev/block/$nvm_partition"
nvm_partition_fs="/sys/fs/ext4/$nvm_partition"

case "`cd $nvm_partition_fs; pwd`" in
	"$nvm_partition_fs")
		#already have file system, nothing need to do
		;;
	*)
		#format it as ext4 then mount it
		$mk_ext4_fs $nvm_partition_dev;
		sync;
		mount -o nosuid -o nodev -t ext4 $nvm_partition_dev $NVM_ROOT_DIR;
		;;
esac

#copy default calibration xml to /NVM/ if dest not exist.
src_file="/etc/audio_swvol_calibration_def.xml"
dst_file="${NVM_ROOT_DIR}/audio_swvol_calibration.xml"

if [ -f "${dst_file}" ]; then
	echo "existing ${dst_file}";
else
	if [ -f "${src_file}" ]; then
		cp ${src_file} ${dst_file}
		chmod 666 ${dst_file}
		chown system.system ${dst_file}
		echo "cp: ${src_file} -> ${dst_file}"
	fi
fi

for x in $(cat /proc/cmdline); do
	case $x in
		simcard=*)
			simcard=${x#simcard=}
			;;
	esac
done

#For Single SIM solution, only care about SIM1
dualsimsolution=`getprop ro.cmd.DUAL_SIMCARD`
if [ "$dualsimsolution" != "true" ] ;then
case "$simcard" in
	"0"|"2")
		simcard="0"
		;;
	*)
		simcard="1"
		;;
esac
fi

setprop sys.telephonymoduleloglevel 8
MODULE_DIR=/lib/modules
insmod $MODULE_DIR/cploaddev.ko simcard=${simcard}
#echo 1 > /sys/devices/system/cpu/cpu0/cp
insmod $MODULE_DIR/seh.ko
# load cp and mrd image and release cp
/system/bin/cploader

ret="$?"
case "$ret" in
	    "-1")
		rmmod seh
		rmmod cploaddev
		exit
       ;;
	    "1")
		rmmod seh
		rmmod cploaddev
		start nvm-aponly
		start diag-aponly
		insmod $MODULE_DIR/citty.ko
		start atcmdsrv-aponly
		exit
       ;;
       *)
       ;;
esac

cputype=`cat /sys/devices/system/cpu/cpu0/cputype`
fastdormancytimeout=`getprop persist.radio.fastdorm.timeout`
if [ -z "$fastdormancytimeout" ]; then
	case "$cputype" in
            "pxa986ax"|"pxa986zx")
	    setprop persist.radio.fastdorm.timeout 5
	    ;;
            "pxa988ax"|"pxa988zx")
	    setprop persist.radio.fastdorm.timeout 0
	    ;;
	    *)
	    setprop persist.radio.fastdorm.timeout 0
	    ;;
	esac
fi

insmod $MODULE_DIR/msocketk.ko
insmod $MODULE_DIR/citty.ko
insmod $MODULE_DIR/cci_datastub.ko
insmod $MODULE_DIR/ccinetdev.ko
insmod $MODULE_DIR/diag.ko
insmod $MODULE_DIR/gs_diag.ko
insmod $MODULE_DIR/cidatattydev.ko

# $1 src file
# $2 dst file
function copy_if_not_exist()
{
if [ -f "${2}" ]; then
	echo "existing ${2}";
else
	if [ -f "${1}" ]; then
		cp ${1} ${2}
		chmod 666 ${2}
		chown system.system ${2}
		echo "cp: ${1} -> ${2}"
	fi
fi
}

kernel_cmdline=`cat /proc/cmdline`

T7_BOARDID="board_id=0x70"

function is_t7_board()
{
	if [[ "$kernel_cmdline" == *$T7_BOARDID* ]]
	then
		return 0
	else
		return 1
	fi
}

# copy correct RF config file for CP
#rfcfg_src="emei/TDRF_Config.nvm"
#rfcfg_dst="TDRF_Config.nvm"

#copy_if_not_exist "/etc/tel/${rfcfg_src}" "${NVM_ROOT_DIR}/${rfcfg_dst}"

#gsmdata_src="emei/GsmCalData.nvm"
#gsmdata_dst="GsmCalData.nvm"
#copy_if_not_exist "/etc/tel/${gsmdata_src}" "${NVM_ROOT_DIR}/${gsmdata_dst}"

#tddata_src="emei/TdCalData.nvm"
#tddata_dst="TdCalData.nvm"
#copy_if_not_exist "/etc/tel/${tddata_src}" "${NVM_ROOT_DIR}/${tddata_dst}"

# copy audio calibration files to NVM if not exist
audio_avc="audio_avc.nvm"
audio_config="audio_config.nvm"
audio_ctm="audio_ctm.nvm"
audio_diamond="audio_diamond.nvm"
audio_DualMic="audio_DualMic.nvm"
udio_ec="audio_ec.nvm"
audio_effect_config="audio_effect_config.xml"
audio_eq="audio_eq.nvm"
audio_gain_calibration="audio_gain_calibration.xml"
audio_gssp_config="audio_gssp_config.nvm"
audio_HLPF="audio_HLPF.nvm"
audio_misc="audio_misc.nvm"
audio_MSAmain="audio_MSAmain.nvm"
audio_ns="audio_ns.nvm"
audio_swvol_calibration="audio_swvol_calibration.xml"
copy_if_not_exist "/etc/tel/${audio_avc}" "${NVM_ROOT_DIR}/${audio_avc}"
copy_if_not_exist "/etc/tel/${audio_config}" "${NVM_ROOT_DIR}/${audio_config}"
copy_if_not_exist "/etc/tel/${audio_ctm}" "${NVM_ROOT_DIR}/${audio_ctm}"
copy_if_not_exist "/etc/tel/${audio_diamond}" "${NVM_ROOT_DIR}/${audio_diamond}"
copy_if_not_exist "/etc/tel/${audio_DualMic}" "${NVM_ROOT_DIR}/${audio_DualMic}"
copy_if_not_exist "/etc/tel/${audio_ec}" "${NVM_ROOT_DIR}/${audio_ec}"
copy_if_not_exist "/etc/tel/${audio_effect_config}" "${NVM_ROOT_DIR}/${audio_effect_config}"
copy_if_not_exist "/etc/tel/${audio_eq}" "${NVM_ROOT_DIR}/${audio_eq}"
copy_if_not_exist "/etc/tel/${audio_gain_calibration}" "${NVM_ROOT_DIR}/${audio_gain_calibration}"
copy_if_not_exist "/etc/tel/${audio_gssp_config}" "${NVM_ROOT_DIR}/${audio_gssp_config}"
copy_if_not_exist "/etc/tel/${audio_HLPF}" "${NVM_ROOT_DIR}/${audio_HLPF}"
copy_if_not_exist "/etc/tel/${audio_misc}" "${NVM_ROOT_DIR}/${audio_misc}"
copy_if_not_exist "/etc/tel/${audio_MSAmain}" "${NVM_ROOT_DIR}/${audio_MSAmain}"
copy_if_not_exist "/etc/tel/${audio_ns}" "${NVM_ROOT_DIR}/${audio_ns}"
copy_if_not_exist "/etc/tel/${audio_swvol_calibration}" "${NVM_ROOT_DIR}/${audio_swvol_calibration}"
# end copy audio calibration/

ln -s /dev/ttymodem0 /dev/ttyGS0
ln -s /dev/citty22 /dev/umts_router

setprop sys.tools.enable 1

/system/bin/eeh -M yes &
/system/bin/nvm &
/system/bin/diag &
/system/bin/atcmdsrv &
/system/bin/vcm &

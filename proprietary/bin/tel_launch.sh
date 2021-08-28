#!/system/bin/sh

#move NVM_ROOT_DIR to init.rc so other applications and services also use it.
#export  NVM_ROOT_DIR="/data/Linux/Marvell/NVM"

setprop marvell.ril.ppp.enabled 0
setprop log.tag.Mms:transaction V
setprop log.tag.Mms:app V
setprop log.tag.Mms:threadcache V
setprop android.telephony.apn-restore 600000
setprop sys.usb.diagmodem 1

setprop ro.marvell.platform.type TTC_TD

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

#backup log files
/system/bin/backup_log.sh


#copy default audio nvm to /NVM if audio nvm files do not exist.
file_name=$NVM_ROOT_DIR/audio_MSAmain.nvm
if [ -f ${file_name} ]; then
    echo "existing ${file_name}";
else
	cp /system/etc/tel/ttc/audio*.nvm $NVM_ROOT_DIR/
	chmod 666 $NVM_ROOT_DIR/audio*.nvm
	echo "Copying audio*.nvm has done!"
fi

file_name=$NVM_ROOT_DIR/audio_gain_calibration.xml
src_file=/system/etc/tel/ttc/audio_gain_calibration.xml
if [ -f ${file_name} ]; then
    echo "existing ${file_name}";
else
	if [ -f ${src_file} ]; then
		cp $src_file $NVM_ROOT_DIR/
		chmod 666 ${file_name}
		echo "Copying ${file_name} has done!"
	else
		echo "No need to copy ${file_name}"
	fi
fi

file_name=$NVM_ROOT_DIR/audio_effect_config.xml
src_file=/system/etc/tel/ttc/audio_effect_config.xml
if [ -f ${file_name} ]; then
    echo "existing ${file_name}";
else
	if [ -f ${src_file} ]; then
		cp $src_file $NVM_ROOT_DIR/
		chmod 666 ${file_name}
		echo "Copying ${file_name} has done!"
	else
		echo "No need to copy ${file_name}"
	fi
fi

/system/bin/run_composite.sh;


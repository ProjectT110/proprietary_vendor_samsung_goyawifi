# Copyright (C) 2013-2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/samsung/goyawifi/setup-makefiles.sh

PRODUCT_COPY_FILES += \
    vendor/samsung/goyawifi/proprietary/bin/atcmdsrv:system/bin/atcmdsrv \
    vendor/samsung/goyawifi/proprietary/bin/backup_log.sh:system/bin/backup_log.sh \
    vendor/samsung/goyawifi/proprietary/bin/connfwexe:system/bin/connfwexe \
    vendor/samsung/goyawifi/proprietary/bin/cploader:system/bin/cploader \
    vendor/samsung/goyawifi/proprietary/bin/diag:system/bin/diag \
    vendor/samsung/goyawifi/proprietary/bin/eeh:system/bin/eeh \
    vendor/samsung/goyawifi/proprietary/bin/emmc_fsck:system/bin/emmc_fsck \
    vendor/samsung/goyawifi/proprietary/bin/hw.sh:system/bin/hw.sh \
    vendor/samsung/goyawifi/proprietary/bin/hwacc:system/bin/hwacc \
    vendor/samsung/goyawifi/proprietary/bin/load_mfg_8787.sh:system/bin/load_mfg_8787.sh \
    vendor/samsung/goyawifi/proprietary/bin/load_prod_8787.sh:system/bin/load_prod_8787.sh \
    vendor/samsung/goyawifi/proprietary/bin/nvm:system/bin/nvm \
    vendor/samsung/goyawifi/proprietary/bin/rfkill:system/bin/rfkill \
    vendor/samsung/goyawifi/proprietary/bin/rild:system/bin/rild \
    vendor/samsung/goyawifi/proprietary/bin/run_composite.sh:system/bin/run_composite.sh \
    vendor/samsung/goyawifi/proprietary/bin/serial_cfun0:system/bin/serial_cfun0 \
    vendor/samsung/goyawifi/proprietary/bin/serial_client:system/bin/serial_client \
    vendor/samsung/goyawifi/proprietary/bin/simal:system/bin/simal \
    vendor/samsung/goyawifi/proprietary/bin/tel_launch.sh:system/bin/tel_launch.sh \
    vendor/samsung/goyawifi/proprietary/bin/tel_launch_no_gui.sh:system/bin/tel_launch_no_gui.sh \
    vendor/samsung/goyawifi/proprietary/bin/telmon:system/bin/telmon \
    vendor/samsung/goyawifi/proprietary/bin/vcm:system/bin/vcm \
    vendor/samsung/goyawifi/proprietary/bin/wlandutservice:system/bin/wlandutservice \
    vendor/samsung/goyawifi/proprietary/etc/Volume.db:system/etc/Volume.db \
    vendor/samsung/goyawifi/proprietary/etc/audio/LVVEFS_Rx_Configuration.txt:system/etc/audio/LVVEFS_Rx_Configuration.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/LVVEFS_Tx_Configuration.txt:system/etc/audio/LVVEFS_Tx_Configuration.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_BLUETOOTH_HEADSET.txt:system/etc/audio/Rx_ControlParams_BLUETOOTH_HEADSET.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_SECVOIP_BLUETOOTH_HEADSET.txt:system/etc/audio/Rx_ControlParams_SECVOIP_BLUETOOTH_HEADSET.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_SECVOIP_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SECVOIP_EARPIECE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_SECVOIP_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SECVOIP_SPEAKER_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_SECVOIP_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SECVOIP_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_SECVOIP_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SECVOIP_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_BLUETOOTH_HEADSET.txt:system/etc/audio/Tx_ControlParams_BLUETOOTH_HEADSET.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_SECVOIP_BLUETOOTH_HEADSET.txt:system/etc/audio/Tx_ControlParams_SECVOIP_BLUETOOTH_HEADSET.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_SECVOIP_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SECVOIP_EARPIECE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_SECVOIP_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SECVOIP_SPEAKER_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_SECVOIP_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SECVOIP_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_SECVOIP_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SECVOIP_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/goyawifi/proprietary/etc/audio_basic_element.xml:system/etc/audio_basic_element.xml \
    vendor/samsung/goyawifi/proprietary/etc/audio_coeff_config.xml:system/etc/audio_coeff_config.xml \
    vendor/samsung/goyawifi/proprietary/etc/audio_gain_config.xml:system/etc/audio_gain_config.xml \
    vendor/samsung/goyawifi/proprietary/etc/audio_path_config.xml:system/etc/audio_path_config.xml \
    vendor/samsung/goyawifi/proprietary/etc/audio_swvol_calibration_def.xml:system/etc/audio_swvol_calibration_def.xml \
    vendor/samsung/goyawifi/proprietary/etc/audio_swvol_config.xml:system/etc/audio_swvol_config.xml \
    vendor/samsung/goyawifi/proprietary/etc/audio_swvol_element.xml:system/etc/audio_swvol_element.xml \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/SDIO8777_SDIO_SDIO.bin:system/etc/firmware/mrvl/SDIO8777_SDIO_SDIO.bin \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/WlanCalData_ext.conf:system/etc/firmware/mrvl/WlanCalData_ext.conf \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/bt_cal_data.conf:system/etc/firmware/mrvl/bt_cal_data.conf \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/bt_init_cfg.conf:system/etc/firmware/mrvl/bt_init_cfg.conf \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/cal_data.conf:system/etc/firmware/mrvl/cal_data.conf \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/reg_alpha2:system/etc/firmware/mrvl/reg_alpha2 \
    vendor/samsung/goyawifi/proprietary/etc/firmware/mrvl/sd8777_uapsta.bin:system/etc/firmware/mrvl/sd8777_uapsta.bin \
    vendor/samsung/goyawifi/proprietary/etc/rom.bin:system/etc/rom.bin \
    vendor/samsung/goyawifi/proprietary/etc/sensor/sensord_cfg_axis:system/etc/sensor/sensord_cfg_axis \
    vendor/samsung/goyawifi/proprietary/etc/tel/Boerne_DIAG.mdb.txt:system/etc/tel/Boerne_DIAG.mdb.txt \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_bsp.cfg:system/etc/tel/diag_bsp.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_fs.cfg:system/etc/tel/diag_fs.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_sd.cfg:system/etc/tel/diag_sd.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_tcp.cfg:system/etc/tel/diag_tcp.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_uart.cfg:system/etc/tel/diag_uart.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_udp.cfg:system/etc/tel/diag_udp.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/diag_usb.cfg:system/etc/tel/diag_usb.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/kunlun/LyraConfig_T7.nvm:system/etc/tel/kunlun/LyraConfig_T7.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/nvm_uncheck_file.cfg:system/etc/tel/nvm_uncheck_file.cfg \
    vendor/samsung/goyawifi/proprietary/etc/tel/ramdump_loglist:system/etc/tel/ramdump_loglist \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/COMCfg.csv:system/etc/tel/ttc/COMCfg.csv \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_DualMic.nvm:system/etc/tel/ttc/audio_DualMic.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_HLPF.nvm:system/etc/tel/ttc/audio_HLPF.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_MSAmain.nvm:system/etc/tel/ttc/audio_MSAmain.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_avc.nvm:system/etc/tel/ttc/audio_avc.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_config.nvm:system/etc/tel/ttc/audio_config.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_ctm.nvm:system/etc/tel/ttc/audio_ctm.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_diamond.nvm:system/etc/tel/ttc/audio_diamond.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_ec.nvm:system/etc/tel/ttc/audio_ec.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_eq.nvm:system/etc/tel/ttc/audio_eq.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_gain_calibration.xml:system/etc/tel/ttc/audio_gain_calibration.xml \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_gssp_config.nvm:system/etc/tel/ttc/audio_gssp_config.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_misc.nvm:system/etc/tel/ttc/audio_misc.nvm \
    vendor/samsung/goyawifi/proprietary/etc/tel/ttc/audio_ns.nvm:system/etc/tel/ttc/audio_ns.nvm \
    vendor/samsung/goyawifi/proprietary/lib/egl/libEGL_MRVL.so:system/lib/egl/libEGL_MRVL.so \
    vendor/samsung/goyawifi/proprietary/lib/egl/libGLESv1_CM_MRVL.so:system/lib/egl/libGLESv1_CM_MRVL.so \
    vendor/samsung/goyawifi/proprietary/lib/egl/libGLESv2_MRVL.so:system/lib/egl/libGLESv2_MRVL.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio.primary.mrvl.so:system/lib/hw/audio.primary.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_path.adda.mrvl.so:system/lib/hw/audio_path.adda.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_path.fm.mrvl.so:system/lib/hw/audio_path.fm.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_path.hifi.mrvl.so:system/lib/hw/audio_path.hifi.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_path.vc.mrvl.so:system/lib/hw/audio_path.vc.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_path.voip.mrvl.so:system/lib/hw/audio_path.voip.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_path.vt.mrvl.so:system/lib/hw/audio_path.vt.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/audio_policy.mrvl.so:system/lib/hw/audio_policy.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/camera.mrvl.so:system/lib/hw/camera.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/gralloc.mrvl.so:system/lib/hw/gralloc.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/hwcomposer.mrvl.so:system/lib/hw/hwcomposer.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/power.mrvl.so:system/lib/hw/power.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/hw/sensors.mrvl.so:system/lib/hw/sensors.mrvl.so \
    vendor/samsung/goyawifi/proprietary/lib/libGAL.so:system/lib/libGAL.so \
    vendor/samsung/goyawifi/proprietary/lib/libGLESv2SC.so:system/lib/libGLESv2SC.so \
    vendor/samsung/goyawifi/proprietary/lib/libHWComposerGC.so:system/lib/libHWComposerGC.so \
    vendor/samsung/goyawifi/proprietary/lib/lib_SamsungRec_V03011b.so:system/lib/lib_SamsungRec_V03011b.so \
    vendor/samsung/goyawifi/proprietary/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    vendor/samsung/goyawifi/proprietary/lib/lib_Samsung_SB_AM_for_ICS_v04004.so:system/lib/lib_Samsung_SB_AM_for_ICS_v04004.so \
    vendor/samsung/goyawifi/proprietary/lib/libacm.so:system/lib/libacm.so \
    vendor/samsung/goyawifi/proprietary/lib/libacoustic.so:system/lib/libacoustic.so \
    vendor/samsung/goyawifi/proprietary/lib/libagps_hal.so:system/lib/libagps_hal.so \
    vendor/samsung/goyawifi/proprietary/lib/libasound.so:system/lib/libasound.so \
    vendor/samsung/goyawifi/proprietary/lib/libaudiodebugtool.so:system/lib/libaudiodebugtool.so \
    vendor/samsung/goyawifi/proprietary/lib/libcameraengine.so:system/lib/libcameraengine.so \
    vendor/samsung/goyawifi/proprietary/lib/libcodecjpegdec.so:system/lib/libcodecjpegdec.so \
    vendor/samsung/goyawifi/proprietary/lib/libcodecjpegenc.so:system/lib/libcodecjpegenc.so \
    vendor/samsung/goyawifi/proprietary/lib/libcontrolcsc.so:system/lib/libcontrolcsc.so \
    vendor/samsung/goyawifi/proprietary/lib/libcupssocket.so:system/lib/libcupssocket.so \
    vendor/samsung/goyawifi/proprietary/lib/libgcu.so:system/lib/libgcu.so \
    vendor/samsung/goyawifi/proprietary/lib/libgpucsc.so:system/lib/libgpucsc.so \
    vendor/samsung/goyawifi/proprietary/lib/libgputex.so:system/lib/libgputex.so \
    vendor/samsung/goyawifi/proprietary/lib/libionhelper.so:system/lib/libionhelper.so \
    vendor/samsung/goyawifi/proprietary/lib/libippimgp.so:system/lib/libippimgp.so \
    vendor/samsung/goyawifi/proprietary/lib/libippsp.so:system/lib/libippsp.so \
    vendor/samsung/goyawifi/proprietary/lib/libippvp.so:system/lib/libippvp.so \
    vendor/samsung/goyawifi/proprietary/lib/libmarvell-ril.so:system/lib/libmarvell-ril.so \
    vendor/samsung/goyawifi/proprietary/lib/libmiscgen.so:system/lib/libmiscgen.so \
    vendor/samsung/goyawifi/proprietary/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    vendor/samsung/goyawifi/proprietary/lib/libphycontmem.so:system/lib/libphycontmem.so \
    vendor/samsung/goyawifi/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
    vendor/samsung/goyawifi/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/samsung/goyawifi/proprietary/lib/libsamsungRecord.so:system/lib/libsamsungRecord.so \
    vendor/samsung/goyawifi/proprietary/lib/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    vendor/samsung/goyawifi/proprietary/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    vendor/samsung/goyawifi/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \
    vendor/samsung/goyawifi/proprietary/lib/libsimal.so:system/lib/libsimal.so \
    vendor/samsung/goyawifi/proprietary/lib/libsocketsvr.so:system/lib/libsocketsvr.so \
    vendor/samsung/goyawifi/proprietary/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
    vendor/samsung/goyawifi/proprietary/lib/libxml2.so:system/lib/libxml2.so \
    vendor/samsung/goyawifi/proprietary/lib/soundfx/libmrvlpreprocessing.so:system/lib/soundfx/libmrvlpreprocessing.so \
    vendor/samsung/goyawifi/proprietary/usr/lib/alsa-lib/libasound_module_ctl_codec.so:system/usr/lib/alsa-lib/libasound_module_ctl_codec.so \
    vendor/samsung/goyawifi/proprietary/usr/lib/alsa-lib/libasound_module_ctl_phone.so:system/usr/lib/alsa-lib/libasound_module_ctl_phone.so \
    vendor/samsung/goyawifi/proprietary/usr/lib/alsa-lib/libasound_module_pcm_phone.so:system/usr/lib/alsa-lib/libasound_module_pcm_phone.so \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/centor_lfe.conf:system/usr/share/alsa/pcm/centor_lfe.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    vendor/samsung/goyawifi/proprietary/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf \
    vendor/samsung/goyawifi/proprietary/vendor/lib/hw/lights.mrvl.so:system/vendor/lib/hw/lights.mrvl.so

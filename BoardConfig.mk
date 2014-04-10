
# inherit from the proprietary version
-include vendor/samsung/espressovzw/BoardConfigVendor.mk
# inherit from common d2
-include device/samsung/d2lte/BoardConfigCommon.mk

# Assert
#TARGET_OTA_ASSERT_DEVICE := espressovzw
#TARGET_BOARD_INFO_FILE ?= device/samsung/espressovzw/board-info.txt

# Insert contents of file near end of updater-script
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./build/tools/releasetools/ota_from_target_files -e ./device/samsung/d2lte/apexq-common/installer_extra

BOARD_USERDATAIMAGE_PARTITION_SIZE := 5200936960

# Kernel
TARGET_KERNEL_CONFIG        := cyanogen_espressovzw_defconfig
BOARD_MKBOOTIMG_ARGS        := --ramdisk_offset 0x01500000
TARGET_KERNEL_SOURCE        := kernel/samsung/d2

# We are not a unified device :(
TARGET_UNIFIED_DEVICE :=
TARGET_INIT_VENDOR_LIB :=
TARGET_LIBINIT_DEFINES_FILE :=

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/espressovzw/bluetooth
BOARD_BLUEDROID_VENDOR_CONF :=
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY :=
BOARD_HAVE_BLUETOOTH_BCM :=
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# Wifi
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HAVE_SAMSUNG_WIFI :=
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/prima_wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/prima_wlan/parameters/fwpath"
WIFI_DRIVER_MODULE_NAME     := "prima_wlan"
WIFI_DRIVER_MODULE_ARG      :=
WIFI_DRIVER_MODULE_AP_ARG   :=
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_P2P     :=

#Audio
#BOARD_HAVE_AUDIENCE_A2220 :=
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_FLUENCE_INCALL := false
BOARD_USES_FLUENCE_FOR_VOIP := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true


# Camera
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true
TARGET_NEED_DISABLE_AUTOFOCUS := true
# TARGET_NEED_PREVIEW_SIZE_FIXUP := true


# TWRP
DEVICE_RESOLUTION := 1024x600
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#SP1_NAME := external_sd
#SP1_BACKUP_METHOD := 1
#SP1_MOUNTABLE := 1
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

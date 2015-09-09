# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version
-include vendor/samsung/espressovzw/BoardConfigVendor.mk

# inherit from common msm8960
-include device/samsung/msm8960-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/samsung/espressovzw/include

# Kernel
TARGET_KERNEL_CONFIG := cyanogen_espressovzw_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
# Asserts
TARGET_OTA_ASSERT_DEVICE := espressovzw,SCH-I750
TARGET_BOARD_INFO_FILE ?= device/samsung/espressovzw/board-info.txt

# Audio
BOARD_HAVE_DOCK_USBAUDIO := true
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_HAVE_SAMSUNG_CSDCLIENT := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_FLUENCE_FOR_VOIP := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_HEADSET_MIC := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_SEPERATED_VOIP := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/espressovzw/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
TARGET_NEED_DISABLE_AUTOFOCUS := true
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true
TARGET_NEED_PREVIEW_SIZE_FIXUP := true
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
TARGET_DISPLAY_INSECURE_MM_HEAP :=

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 880803840
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5200936960
TARGET_RECOVERY_FSTAB := device/samsung/espressovzw/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_F2FS := true

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/espressovzw/ril

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/espressovzw/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    geomagneticd.te

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_PROVIDES_WCNSS_QMI := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/prima_wlan/parameters/fwpath"
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_DRIVER_FW_PATH_AP      := "ap"

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/espressovzw

# TWRP
DEVICE_RESOLUTION := 1024x600
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_VARIANT := twrp
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_THEME := landscape_hdpi

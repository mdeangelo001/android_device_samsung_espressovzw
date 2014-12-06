#
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

$(call inherit-product-if-exists, vendor/samsung/espressovzw/espressovzw-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressovzw/overlay

# Boot animation and screen size
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=160

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

# Ramdisk
PRODUCT_PACKAGES += \
    50bluetooth \
    60compass \
    init.target.rc \
    wifimac.sh

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/espressovzw/audio/audio_policy.conf:system/etc/audio_policy.conf

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/keyboard/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl \
    device/samsung/espressovzw/keyboard/sec_keypad.kcm:system/usr/keychars/sec_keypad.kcm \
    device/samsung/espressovzw/keyboard/sec_keypad.idc:system/usr/idc/sec_keypad.idc \
    device/samsung/espressovzw/keyboard/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/espressovzw/keyboard/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/initlogo.rle:root/initlogo.rle

# Media configuration
PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/media/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/espressovzw/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Wifi firmware
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin

# common msm8960
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)

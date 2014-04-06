#
# Copyright (C) 2011 The CyanogenMod Project
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


# Media configuration
PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/configs/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/espressovzw/media/media_profiles.xml:system/etc/media_profiles.xml

# Boot Logo
PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/configs/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/espressovzw/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/espressovzw/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/samsung/espressovzw/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
    device/samsung/espressovzw/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/samsung/espressovzw/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/espressovzw/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/samsung/espressovzw/keylayout/sec_keyboard.kl:system/usr/keylayout/sec_keyboard.kl \
    device/samsung/espressovzw/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl


# Apexq scripts
PRODUCT_PACKAGES += \
    50bluetooth \
    wifimac.sh
#    60compass 

# Wifi firmware
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin_

# d2-common
$(call inherit-product, device/samsung/d2lte/d2-common.mk)

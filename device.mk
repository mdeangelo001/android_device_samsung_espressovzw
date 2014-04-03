$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/espressovzw/espressovzw-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressovzw/overlay

# Boot animation and screen size
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=160


# Audio configuration
PRODUCT_COPY_FILES += \
        device/samsung/espressovzw/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
        device/samsung/espressovzw/audio/audio_policy.conf:system/etc/audio_policy.conf

# Wifi
PRODUCT_COPY_FILES += \
        device/samsung/espressovzw/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
        device/samsung/espressovzw/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Keymaps
PRODUCT_COPY_FILES += \
       device/samsung/espressovzw/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
       device/samsung/espressovzw/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
       device/samsung/espressovzw/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
       device/samsung/espressovzw/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
       device/samsung/espressovzw/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
       device/samsung/espressovzw/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
       device/samsung/espressovzw/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
       device/samsung/espressovzw/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
       device/samsung/espressovzw/keylayout/sec_keyboard.kl:system/usr/keylayout/sec_keyboard.kl \
       device/samsung/espressovzw/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
       device/samsung/espressovzw/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
       device/samsung/espressovzw/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
       device/samsung/espressovzw/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Media profile
PRODUCT_COPY_FILES += \
       device/samsung/d2lte/media/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.crda.sh \
    init.led.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin \
    crda \
    macloader

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp


# Increase the HWUI font cache since we have tons of RAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.text_cache_width=2048

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# QRNGD
PRODUCT_PACKAGES += qrngd

#common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.radio.add_power_save=1 \
    persist.radio.snapshot_disabled=1 \
    com.qc.hardware=true \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.ril.transmitpower=true \
    ro.opengles.version=131072 \
    persist.audio.vr.enable=false \
    persist.audio.speaker.location=high \
    persist.timed.enable=true \
    persist.fuse_sdcard=true \
    ro.emmc.sdcard.partition=17 \
    ro.use_data_netmgrd=true \
    persist.data_netmgrd_nint=16 \
    lpa.decode=true \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    persist.radio.no_wait_for_card=0 \
    keyguard.no_require_sim=true \
    media.aac_51_output_enabled=true \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    dalvik.vm.dexopt-data-only=0

ifneq ($(TARGET_PRODUCT),cm_apexqtmo)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.handset.mic=digital \
    ro.qc.sdk.audio.fluencetype=fluence
endif

# enable repeatable keys in cwm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115

# common msm8960
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)


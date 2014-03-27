$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/espressovzw/espressovzw-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/espressovzw/overlay

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

PRODUCT_COPY_FILES += \
    device/samsung/espressovzw/gps/gps.conf:system/etc/gps.conf

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_espressovzw
PRODUCT_DEVICE := espressovzw
PRODUCT_BRAND := Verizon
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-I705

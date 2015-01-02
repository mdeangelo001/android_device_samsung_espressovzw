$(call inherit-product, device/samsung/espressovzw/full_espressovzw.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espressovzw TARGET_DEVICE=espressovzw BUILD_FINGERPRINT="Verizon/espressovzw/espressovzw:4.1.2/JZO54K/I705VRBLL2:user/release-keys" PRIVATE_BUILD_DESC="espressovzw-user 4.1.2 JZO54K I705VRBLL2 release-keys"

PRODUCT_NAME := cm_espressovzw
PRODUCT_DEVICE := espressovzw


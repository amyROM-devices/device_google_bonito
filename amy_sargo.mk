# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit some common amyROM stuff.
$(call inherit-product, vendor/amy/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

-include device/google/bonito/device-lineage.mk

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-amy \
    $(LOCAL_PATH)/overlay-amy-sargo

## Device identifier. This must come after all inclusions
PRODUCT_NAME := amy_sargo
PRODUCT_MODEL := Pixel 3a
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:11/RQ3A.211001.001/7641976:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)

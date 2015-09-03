# Check for target product
ifeq (metallium_falcon,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xhdpi

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include metallium common configuration
include vendor/metallium/main.mk

# Inherit device configuration
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := metallium_falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola

endif

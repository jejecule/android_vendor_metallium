$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include metallium common configuration
include vendor/metallium/main.mk

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := metallium_falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola

endif

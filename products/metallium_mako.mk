ifeq (metallium_mako,$(TARGET_PRODUCT))
$(call inherit-product, device/lge/mako/metallium_mako.mk)

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xhdpi



PRODUCT_RELEASE_NAME := Nexus 4
PRODUCT_NAME := metallium_mako
endif
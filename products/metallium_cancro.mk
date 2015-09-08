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

# Check for target product

ifeq (metallium_cancro,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/metallium/main.mk

$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cancro device
$(call inherit-product, device/xiaomi/cancro/cancro.mk)

PRODUCT_NAME := metallium_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI Cancro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="cancro" \
    PRODUCT_NAME="cancro" \
    BUILD_FINGERPRINT="Xiaomi/cancro/cancro:5.1.1/LMY48B/5.5.20:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="cancro-userdebug 5.1.1 LMY48B 5.5.20 test-keys"
endif

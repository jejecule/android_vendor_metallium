# Copyright (C) 2015 The CyanogenMod Project
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
ifeq (merk_armani,$(TARGET_PRODUCT))

$(call inherit-product, device/xiaomi/armani/full_armani.mk)

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/merk/configs/telephony.mk)

# Include MerkMod common configuration
include vendor/merk/main.mk

PRODUCT_NAME := merk_armani
BOARD_VENDOR := xiaomi
PRODUCT_DEVICE := armani

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := XIAOMI
TARGET_VENDOR_DEVICE_NAME := XIAOMI
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=ARMANI PRODUCT_NAME=ARMANI

endif

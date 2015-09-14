# Copyright (C) 2014 ParanoidAndroid Project
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

ifeq (metallium_find5,$(TARGET_PRODUCT))

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/metallium/main.mk

# Inherit device configuration
$(call inherit-product, device/oppo/find5/full_find5.mk)

# Override AOSP build properties
PRODUCT_NAME := metallium_find5
PRODUCT_DEVICE := find5

endif

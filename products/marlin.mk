# Copyright (C) 2017 The Pure Nexus Project
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

# Include pure telephony configuration
include vendor/to/configs/pure_phone.mk

# Inherit AOSP device configuration for marlin
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit arm64 phone gapps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Override AOSP build properties
PRODUCT_NAME := marlin
PRODUCT_BRAND := google
PRODUCT_DEVICE := marlin
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:8.0.0/OPR3.170623.008/4294783:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 8.0.0/ OPR3.170623.008 4294783 release-keys"

#
# Copyright (C) 2018 The LineageOS Project
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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx549j/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_nx549j
PRODUCT_DEVICE := nx549j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia Z11 mini s
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=nubia/NX549J/NX549J:6.0.1/MMB29M/eng.nubia.20170919.120125:user/release-keys \
    PRIVATE_BUILD_DESC="NX549J-user 6.0.1 MMB29M eng.nubia.20170919.120125 release-keys" \
    TARGET_DEVICE="NX549J"

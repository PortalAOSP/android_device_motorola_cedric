#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit fr cedric device
$(call inherit-product, device/motorola/cedric/device.mk)

# Inherit some common GZOSP stuff.
$(call inherit-product, vendor/paosp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cedric
PRODUCT_NAME := paosp_cedric
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

# for specific
$(call inherit-product, vendor/motorola/potter/potter-vendor.mk)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G5" \
    PRIVATE_BUILD_DESC="cedric-7.0/NPPS25.137-72-4/4:user/release-keys"

BUILD_FINGERPRINT := motorola/cedric/cedric:7.0/NPPS25.137-72-4/4:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.paosp.maintainer=p8tgames
    
    

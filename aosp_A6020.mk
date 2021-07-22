# Copyright (C) 2018 The PixelExperience Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Inherit from A6020 device
$(call inherit-product, device/lenovo/A6020/device.mk)

# Inherit some common PixelExperience  stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A6020
PRODUCT_NAME := aosp_A6020
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Vibe K5
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Fisuri OTA
CUSTOM_BUILD_TYPE := OFFICIAL
IS_FISURI_VERSION := true

# ADB props
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# Use Gapps
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
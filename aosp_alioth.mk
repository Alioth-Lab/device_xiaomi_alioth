#
# Copyright (C) 2021-2022 The LineageOS Project
# Copyright (C) 2022 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Device specific
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080

# Quick tap
TARGET_SUPPORTS_QUICK_TAP := true

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier
PRODUCT_NAME := aosp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2012K11AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_eea-user 13 TKQ1.220829.002 V14.0.7.0.TKHEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "POCO/alioth_eea/alioth:13/TKQ1.220829.002/V14.0.7.0.TKHEUXM:user/release-keys"

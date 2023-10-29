#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

## Device
$(call inherit-product, device/oppo/r7sf/device.mk)

## LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_r7sf
PRODUCT_DEVICE := r7sf
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := R7sf
PRODUCT_MANUFACTURER := OPPO
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8916_64-user 6.0.1 MMB29M eng.root.20160522.010741 release-keys" \
    PRODUCT_NAME="R7sf"

BUILD_FINGERPRINT=OPPO/R7sfg/R7sf:6.0.1/MMB29M/1456473551:user/release-keys

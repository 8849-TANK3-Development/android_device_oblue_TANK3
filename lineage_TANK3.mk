#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/oblue/TANK3/device.mk)

# Inherit LineageOS product
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_TANK3
PRODUCT_DEVICE := TANK3
PRODUCT_MANUFACTURER := OBLUE
PRODUCT_BRAND := 8849
PRODUCT_MODEL := TANK 3

PRODUCT_GMS_CLIENTID_BASE := android-agold

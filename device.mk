#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6895-common
$(call inherit-product, device/oblue/mt6895-common/mt6895.mk)

# Inherit firmware
$(call inherit-product, device/oblue/TANK3-firmware/firmware.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 31

# Inherit the proprietary files
$(call inherit-product, vendor/oblue/TANK3/TANK3-vendor.mk)

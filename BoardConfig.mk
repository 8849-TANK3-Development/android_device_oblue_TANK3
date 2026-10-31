#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oblue/TANK3

# Inherit from mt6895-common
include device/oblue/mt6895-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 480

# Inherit the proprietary files
include vendor/oblue/TANK3/BoardConfigVendor.mk

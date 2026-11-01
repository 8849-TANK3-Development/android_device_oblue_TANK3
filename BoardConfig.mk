#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oblue/TANK3

# Inherit from mt6895-common
include device/oblue/mt6895-common/BoardConfigCommon.mk

# Inherit firmware
include device/oblue/TANK3-firmware/config.mk

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
KERNEL_PREBUILTS_DIR := $(DEVICE_PATH)-kernel

BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_PREBUILTS_DIR)/dtbs/
PRODUCT_COPY_FILES += \
	$(KERNEL_PREBUILTS_DIR)/Image.gz:kernel

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(KERNEL_PREBUILTS_DIR)/modules.load))
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(KERNEL_PREBUILTS_DIR)/modules/*.ko)

BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(KERNEL_PREBUILTS_DIR)/modules.load.vendor_ramdisk))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(addprefix $(KERNEL_PREBUILTS_DIR)/modules/, $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD))

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(KERNEL_PREBUILTS_DIR)/modules.load.recovery))
RECOVERY_MODULES := $(addprefix $(KERNEL_PREBUILTS_DIR)/modules/, $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD))

BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(sort $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES) $(RECOVERY_MODULES))

# Inherit the proprietary files
include vendor/oblue/TANK3/BoardConfigVendor.mk

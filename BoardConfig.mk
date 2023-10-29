#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/oppo/r7sf

## Include common BoardConfig
include device/oppo/msm8916-64-common/BoardConfigCommon.mk

## Inherit common vendor blobs
include vendor/oppo/r7sf/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := r7sf,R7sf

# Assertions
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Kernel
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01000000
TARGET_KERNEL_CONFIG := lineageos_r7sf_defconfig

# Partition
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26843545600

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

# Security patch level
VENDOR_SECURITY_PATCH := 2016-03-01

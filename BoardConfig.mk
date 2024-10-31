#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/KI7

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Build rules
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6768
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_KERNEL_IMAGE_NAME := kernel

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_BOOT_HEADER_VERSION := 2
BOARD_PAGE_SIZE := 2048
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_TAGS_OFFSET := 0x0bc08000
BOARD_DTB_OFFSET := 0x0bc08000

BOARD_MKBOOTIMG_ARGS += \
    --header_version $(BOARD_BOOT_HEADER_VERSION) \
    --kernel_offset $(BOARD_KERNEL_OFFSET) \
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
    --tags_offset $(BOARD_TAGS_OFFSET) \
    --dtb_offset $(BOARD_DTB_OFFSET) \
    --dtb $(TARGET_PREBUILT_DTB)

# Android Verified Boot
BOARD_AVB_ENABLE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := KI7,TECNO-KI7

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_USES_METADATA_PARTITION := true 
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := tecno_dynamic_partitions
BOARD_TECNO_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_TECNO_DYNAMIC_PARTITIONS_PARTITION_LIST += \
    system \
    system_ext \
    vendor \
    product

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := mt6768

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_PREPARE_DATA_MEDIA_EARLY := true

# Security Patches
PLATFORM_SECURITY_PATCH := 2127-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# StatusBar
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := "300"

# Tools
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LPTOOLS := true

# TWRP Configs
TW_DEFAULT_BRIGHTNESS := 80
TW_EXCLUDE_APEX := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_MTP := true
TW_EXCLUDE_LPDUMP := true
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_EXFAT := true
TW_NO_EXFAT_FUSE := true
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := en
TW_FRAMERATE := 60
TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_MAX_BRIGHTNESS := 255
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_TECNO-KI7
TARGET_RECOVERY_DEVICE_MODULES := libinit_TECNO-KI7

# Maintainer & version
TW_DEVICE_VERSION := KI7_yoneLLR

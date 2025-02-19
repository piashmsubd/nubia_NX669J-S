#
# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_NX669J.mk

COMMON_LUNCH_CHOICES := \
    twrp_NX669J-user \
    twrp_NX669J-userdebug \
    twrp_NX669J-eng

# Device Config
PRODUCT_NAME := twrp_NX669J
PRODUCT_DEVICE := NX669J
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := RedMagic 6S Pro
PRODUCT_MANUFACTURER := Nubia

# Inherit common device configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/nubia/NX669J/device.mk)

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lahaina
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_CONFIG := NX669J_defconfig
TARGET_KERNEL_SOURCE := kernel/nubia/NX669J

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_DYNAMIC_PARTITIONS := \
    system \
    system_ext \
    vendor \
    vendor_dlkm \
    product \
    odm \
    system_dlkm

# TWRP Settings
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_REPACKTOOLS := true
TW_USE_TOOLBOX := true
TW_USE_FSCRYPT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_LZ4 := true
TW_INCLUDE_LOGCAT := true
TW_INCLUDE_FUSE_SUPER := true
TW_INCLUDE_DECRYPT := true
TW_INCLUDE_FBE := true
TW_INCLUDE_ADB_AUTH := true
TW_HAS_LANDSCAPE := true
TW_ENABLE_GPU_RENDERING := true

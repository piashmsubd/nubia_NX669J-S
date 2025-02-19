#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/nubia/NX669J

# A/B OTA Post-Installation Configuration
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.lahaina

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.lahaina \
    libgptutils \
    libz \
    libcutils

# OTA & Update Engine
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Dynamic Partition & Logical Volume Management
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_DYNAMIC_PARTITIONS := \
    system \
    system_ext \
    vendor \
    vendor_dlkm \
    product \
    odm \
    system_dlkm

# Copy FSTAB for Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/twrp.fstab

# Filesystem Configurations
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel Configuration
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Dynamic Partition Support
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := nubia_dynamic_partitions
BOARD_NUBIA_DYNAMIC_PARTITIONS_SIZE := 9126805504
BOARD_NUBIA_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    vendor \
    vendor_dlkm \
    product \
    odm \
    system_dlkm

# TWRP Features & Configurations
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_CRYPTO := true
TW_USE_FSCRYPT := true
TW_USE_SDEXT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LOGCAT := true
TW_INCLUDE_LZ4 := true
TW_USE_FSCRYPT_POLICY := 2
TW_INCLUDE_FBE := true
TW_INCLUDE_DECRYPT := true
TW_USE_DYNAMIC_PARTITIONS := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_SUPER := true
TW_INCLUDE_ADB_AUTH := true

# A/B Bootloader & FastbootD Support
TW_INCLUDE_FASTBOOTD := true
TW_INCLUDE_REPACKTOOLS := true
TW_NO_SCREEN_TIMEOUT := true
TW_USE_TOOLBOX := true
TW_NO_USB_STORAGE := false
TW_HAS_LANDSCAPE := true

# Performance Enhancements
TW_USE_ZRAM := true
TW_USE_SWAP := true
TW_ENABLE_GPU_RENDERING := true

# TWRP Recovery Image Settings
BOARD_HAS_NO_REAL_SDCARD := false
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TW_SCREEN_BLANK_ON_BOOT := true
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/battery"

#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/transsion/mt6768-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Infinix-X693

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL := false
TARGET_PREBUILT_DTB := $(KERNEL_PATH)/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_PATH)/dtbo.img
TARGET_PREBUILT_KERNEL := $(KERNEL_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(KERNEL_PATH)/dtb.img:$(TARGET_COPY_OUT)/dtb.img \
    $(KERNEL_PATH)/kernel:kernel \
    $(call find-copy-subdir-files,*,$(KERNEL_PATH)/vendor_dlkm/,$(TARGET_COPY_OUT_VENDOR_DLKM)/lib/modules)

# OTA assert
TARGET_OTA_ASSERT_DEVICE := X693, rocko

# Inherit the proprietary files
include vendor/infinix/rocko/BoardConfigVendor.mk

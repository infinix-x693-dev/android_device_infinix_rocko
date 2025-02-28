#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/infinix/rocko/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_rocko
PRODUCT_DEVICE := rocko
PRODUCT_MANUFACTURER := Infinix
PRODUCT_BRAND := Infinix 
PRODUCT_MODEL := Infinix Note 10

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=rocko\
    BuildFingerprint=Infinix/X693-GL/Infinix-X693:11/RP1A.200720.011/230524V666:user/release-keys



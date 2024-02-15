#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a31 device
$(call inherit-product, device/samsung/a31/device.mk)

PRODUCT_DEVICE := a31
PRODUCT_NAME := omni_a31
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A315G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a31nsdx-user 10 QP1A.190711.020 A315GDXU1AUC9 release-keys"

BUILD_FINGERPRINT := samsung/a31nsdx/a31:10/QP1A.190711.020/A315GDXU1AUC9:user/release-keys

#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Y9Plus device
$(call inherit-product, device/doogee/Y9Plus/device.mk)

PRODUCT_DEVICE := Y9Plus
PRODUCT_NAME := omni_Y9Plus
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := Y9Plus
PRODUCT_MANUFACTURER := doogee

PRODUCT_GMS_CLIENTID_BASE := android-doogee

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_q930-user 9 PPR1.180610.011 20200229 release-keys"

BUILD_FINGERPRINT := DOOGEE/Y9Plus_EEA/Y9Plus:9/PPR1.180610.011/20200229:user/release-keys

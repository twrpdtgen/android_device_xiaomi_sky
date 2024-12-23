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

# Inherit from sky device
$(call inherit-product, device/xiaomi/sky/device.mk)

PRODUCT_DEVICE := sky
PRODUCT_NAME := omni_sky
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := XIAOMI_sky
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_sky-eng 99.87.36 SP2A.220405.004 eng.sheshu.20240105.113600 test-keys"

BUILD_FINGERPRINT := xiaomi/twrp_sky/sky:99.87.36/SP2A.220405.004/sheshuv01051133:eng/test-keys

#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
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
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := parrot for arm64
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sky-user 12 SKQ1.230118.001 OS2.0.210.0.VMWMIXM release-keys"

BUILD_FINGERPRINT := Redmi/sky/sky:12/SKQ1.230118.001/OS2.0.210.0.VMWMIXM:user/release-keys

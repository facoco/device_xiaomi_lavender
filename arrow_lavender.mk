#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit dalvik from native
$(call inherit-product, device/xiaomi/lavender/dalvikheap.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
DEVICE_MAINTAINER := Hazama25, ak940s

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=lavender \
    PRODUCT_NAME=lavender \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.201205.010 6953398 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

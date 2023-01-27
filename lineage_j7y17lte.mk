#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from j7y17lte device
$(call inherit-product, device/samsung/j7y17lte/device.mk)

PRODUCT_DEVICE := j7y17lte
PRODUCT_NAME := lineage_j7y17lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy J7 2017
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="arrow_j7y17lte-eng 11 RQ3A.211001.001 eng.root.20221225.100954 test-keys"

BUILD_FINGERPRINT := samsung/arrow_j7y17lte/j7y17lte:11/RQ3A.211001.001/root12251008:eng/test-keys

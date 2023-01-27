#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl \
    libkeymaster3device

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/android.hardware.keymaster@3.0-service.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/android.hardware.keymaster@3.0-service.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
		frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
	fstab.samsungexynos7870 \
	init.target.rc \
	init.baseband.rc

# Inherit from common (audio)
$(call inherit-product, device/samsung/universal7870-common/device-oss_audio.mk)

# Custom mixer_paths prebuilt
#PRODUCT_COPY_FILES += \
#    $(DEVICE_PATH)/configs/audio/prebuilt/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
#    $(DEVICE_PATH)/configs/audio/prebuilt/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml

# Inherit from common
# $(call inherit-product, device/samsung/universal7870-common/device-prebuilt_audio.mk)

# Properties
-include $(DEVICE_PATH)/system_prop.mk

# Inherit from common
$(call inherit-product, device/samsung/universal7870-common/device-common.mk)

# $(call inherit-product, device/samsung/universal7870-common/device-prebuilt_bsp-vndk.mk)

$(call inherit-product-if-exists, vendor/samsung/j7y17lte/j7y17lte-vendor.mk)

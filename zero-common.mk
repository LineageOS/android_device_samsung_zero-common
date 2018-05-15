#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/zero-common

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/zero-common/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Browser
PRODUCT_PACKAGES += \
    Jelly

# Libstlport
PRODUCT_PACKAGES += \
    libstlport

# Ramdisk
PRODUCT_PACKAGES += \
    init.power.rc \
    init.samsungexynos7420.rc \
    ueventd.samsungexynos7420.rc

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Samsung
PRODUCT_PACKAGES += \
    SamsungServiceMode

# seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Inherit board specific products
-include $(LOCAL_PATH)/product/*.mk

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos7420/exynos7420.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/zero-common/zero-common-vendor.mk)

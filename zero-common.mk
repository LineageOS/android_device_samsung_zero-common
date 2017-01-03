#
# Copyright (C) 2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

ifneq ($(filter zerofltespr zeroltespr,$(TARGET_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += device/samsung/zero-common/overlay-cdma
else
DEVICE_PACKAGE_OVERLAYS += device/samsung/zero-common/overlay-gsm
endif


# Include package config fragments
include vendor/cm/device/product/common/bluetooth-le.mk
include vendor/cm/device/product/common/bluetooth.mk
include vendor/cm/device/product/common/consumerir.mk
include vendor/cm/device/product/common/fingerprint.mk
include $(LOCAL_PATH)/product/*.mk

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/zero-common/zero-common-vendor.mk)

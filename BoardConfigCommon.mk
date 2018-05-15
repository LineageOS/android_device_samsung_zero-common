#
# Copyright (C) 2016 The CyanogenMod Project
#           (C) 2018 The LineageOS Project
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
DEVICE_PATH := $(LOCAL_PATH)
BOARD_VENDOR := samsung

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Manifest
DEVICE_MANIFEST_FILE += device/samsung/zero-common/manifest.xml

# Sepolicy
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

include device/samsung/zero-common/board/*.mk

# inherit from the proprietary version
-include vendor/samsung/zero-common/BoardConfigVendor.mk

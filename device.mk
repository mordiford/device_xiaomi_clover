#
# Copyright 2018 The Android Open Source Project
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

# Inherit the fusion-common definitions
$(call inherit-product, device/xiaomi/sdm660-common/platform.mk)

# setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# setup HWUI configs
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

DEVICE_PATH := device/xiaomi/clover

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml 

# Device is a Tablet
PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aosp_clover
PRODUCT_DEVICE := clover
PRODUCT_MODEL := Mi PAD 4 (AOSP)
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

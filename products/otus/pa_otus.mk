# Copyright (C) 2015-2017 KuCK7610@XDAdev
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

# Check for target product
ifeq (pa_otus,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
 
# Inherit AOSP device configuration
$(call inherit-product, device/motorola/otus/full_otus.mk)

# Include PA common configuration
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common AOSPA stuff.
include vendor/pa/main.mk

include device/qcom/common/common.mk


# Override AOSP build properties
PRODUCT_DEVICE := otus
PRODUCT_NAME := pa_otus
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := otus


endif

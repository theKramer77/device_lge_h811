#
# Copyright 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit ROM vendor common stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit ROM vendor telephony stuff
$(call inherit-product, vendor/aosp/config/telephony.mk)

# Overlays (inherit after vendor to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from h811 device
$(call inherit-product, device/lge/h811/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aosp_h811
PRODUCT_DEVICE := h811
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H811
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4__tmo_us" \
    PRIVATE_BUILD_DESC="p1__tmo_us-user 8.0 NRD90U 1717709471d0f release-keys"

BUILD_FINGERPRINT := "lge/p1__tmo_us/p1:8.1.0/OPM4.171019.016.A1/4720811:user/release-keys"

#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/samsung/gardaltetmo/device_gardaltetmo.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


PRODUCT_NAME := cm_gardaltetmo
PRODUCT_DEVICE := gardaltetmo

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_MODEL=SGH-T399 \
PRODUCT_NAME=gardaltetmo \
PRODUCT_DEVICE=gardaltetmo \
TARGET_DEVICE=gardaltetmo \
BUILD_FINGERPRINT="samsung/gardaltetmo/gardaltetmo:4.4.4/KOT49H/T399NUVUANH1:user/release-keys" \
PRIVATE_BUILD_DESC="gardaltetmo-user 4.4.4 KOT49H T399NUVUANH1 release-keys"



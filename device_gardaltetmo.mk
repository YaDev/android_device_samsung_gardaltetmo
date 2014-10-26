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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, vendor/samsung/gardaltetmo/gardaltetmo-vendor.mk)

PRODUCT_NAME := device_gardaltetmo
PRODUCT_DEVICE := gardaltetmo
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-T399


LOCAL_PATH := device/samsung/gardaltetmo

# Audio
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf


# GPU
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/egl.cfg:system/lib/egl/egl.cfg


# GPS
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
$(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml



# Keylayouts
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/idc/mxt540e_i2c.idc:system/usr/idc/mxt540e_i2c.idc \
$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# NFC 
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml 


# Media profile
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml


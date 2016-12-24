#
# Copyright (C) 2016 The Mokee Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/huawei/g750c/device.mk)
$(call inherit-product-if-exists, vendor/huawei/g750c/g750c-vendor.mk)

# Inherit some common mk stuff
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := g750c
PRODUCT_NAME := mk_g750c
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI B199
PRODUCT_MANUFACTURER := Huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=B199 \
	BUILD_FINGERPRINT=Huawei/B199/hwB199:4.4.2/HuaweiB199/C00B321:user/release-keys \
	PRIVATE_BUILD_DESC="g750-c00-user 7.1 GRJ90 C00B321 release-keys"

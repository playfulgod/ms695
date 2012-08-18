#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/lge/m3/full_m3.mk)

# Inherit some common CM9 stuff.
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product-if-exists, vendor/cm/config/cdma.mk)

PRODUCT_NAME := cm_m3
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := m3
PRODUCT_MODEL := MS695
PRODUCT_MANUFACTURER := LGE

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMPlus

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

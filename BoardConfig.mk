# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Board properties
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := m3
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := false

# Kernel
TARGET_KERNEL_CONFIG := cyanogen_m3_r0_defconfig
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=m3
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=8388608 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 348127232
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1094713344
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true

# Internal storage
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1k1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

# Recovery
TARGET_RECOVERY_INITRC := device/lge/m3/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS  := ../../../device/lge/m3/recovery/graphics.c

# USB sheezle
BOARD_MASS_STORAGE_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Input
BOARD_HAS_NO_SELECT_BUTTON := true

## TODO

# Copyright (C) 2011 The CyanogenMod Project
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

# inherit from msm7x27-common
-include device/htc/msm7x27-common/BoardConfigCommon.mk

TARGET_DEVICE := icong
TARGET_BOOTLOADER_BOARD_NAME := icong

### Kernel
ifneq (eng,$(TARGET_BUILD_VARIANT))
TARGET_KERNEL_CONFIG := icong_defconfig
else
TARGET_KERNEL_CONFIG := icong_recovery_defconfig
endif
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null androidboot.hardware=icong 
BOARD_KERNEL_BASE := 0x12c00000
BOARD_KERNEL_PAGESIZE := 2048

# Releasetools
#TARGET_OTA_EXTRAS_FILE := device/htc/icong/releasetools/extras.txt
TARGET_OTA_ASSERT_DEVICE := icong,icon_g,marvel,icon

### Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 3824192
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 11860608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x10400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

### Compass
BOARD_VENDOR_COMPASS_HARDWARE := akm8975

### Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/icong/bluetooth/include

### GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := icong

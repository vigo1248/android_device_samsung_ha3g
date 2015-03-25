USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/ha3g/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal5420

# Platform
TARGET_BOARD_PLATFORM := smdk5420

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE :=  0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000

BOARD_BOOTIMAGE_PARTITION_SIZE :=     0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00D00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/ha3g/kernAl

#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP specific build flags
#DEVICE_RESOLUTION := 1080x1920
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := /sys/devices/platform/s5p-mipi-dsim.1/backlight/panel/brightness
TW_MAX_BRIGHTNESS := 255
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p29"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,discard,journal_async_commit,errors=panic"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/ha3g/custombootimg.mk
TW_EXCLUDE_SUPERSU := true
TW_DISABLE_TTF := true
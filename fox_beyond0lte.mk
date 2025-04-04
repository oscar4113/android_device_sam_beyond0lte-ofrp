# OrangeFox Recovery Configuration for beyond0lte (Samsung Galaxy S10e)

# Basic device information
DEVICE_NAME := beyond0lte
DEVICE_MANUFACTURER := samsung
DEVICE_PLATFORM := exynos9820
DEVICE_MODEL := SM-G970F

# Recovery-specific settings
TARGET_RECOVERY_FSTAB := device/samsung/beyond0lte/recovery/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_BOOTLOADER := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Partition sizes (in bytes) - Adjust these if necessary
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472 # Example size, verify with your device
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736 # Example size, verify with your device
BOARD_USERDATAIMAGE_PARTITION_SIZE := 53687091200 # Example size, verify with your device
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824 # Example size, verify with your device

# Kernel and ramdisk
TARGET_KERNEL_SOURCE := kernel/samsung/exynos9820
TARGET_KERNEL_CONFIG := beyond0lte_defconfig
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100

# DTB/DTBO
BOARD_MKBOOTIMG_ARGS += --header_version 2
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_DTB_OFFSET := 0x01f00000

# TWRP features
TW_THEME := portrait_hd
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 2048
TW_DEFAULT_BRIGHTNESS := 1200
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone0/temp"
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_NO_POWER_OFF := true
TW_NO_CPU_TEMP := false
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_EXFAT_3G := true
TW_INCLUDE_RESET_PROP := true
TW_HAS_MTP := true
TW_MTP_DEVICE := "/dev/usb-ffs/adb"
TW_USE_TOOLBOX := true
TW_EXCLUDE_APEX := true

# OrangeFox specific features
OF_MAINTAINER := "Your Name/Alias"
OF_DEVICE_VERSION := "R11.x_beyond0lte" # Adjust version as needed
OF_OFFICIAL := 0 # 0 for unofficial, 1 for official
OF_TARGET_PROJECT := "OrangeFox-Recovery"
OF_TARGET_BUILD := "Unofficial" # Or "Official"
OF_KEEP_VERITY := true
OF_KEEP_FORCEENCRYPT := true
OF_ENCRYPTED_DATA := true
OF_SUPPORT_AAPT_BRIGHTNESS := true
OF_SUPPORT_FLASH_XMFW := true
OF_SUPPORT_ZRAM_SWAP := true
OF_DISABLE_DM_VERITY := true # If needed.
OF_DISABLE_FORCE_ENCRYPTION := true # If needed.
OF_USE_FBE_METADATA := true
OF_SYSTEM_RAMDISK := true
OF_SYSTEM_ROOT_IMAGE := true

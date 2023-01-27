DEVICE_PATH := device/samsung/j7y17lte

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_j7y17lte

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := exynos7870-j7y17lte_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2571279104
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.samsungexynos7870

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary files
include vendor/samsung/j7y17lte/BoardConfigVendor.mk

# Inherit common board flags
include device/samsung/universal7870-common/BoardConfigCommon.mk

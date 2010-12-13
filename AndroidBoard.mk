LOCAL_PATH := $(call my-dir)
LOCAL_FIRMWARES := iwlwifi-6050-4.ucode LICENSE.iwlwifi-6050-ucode
# LOCAL_KEYMAPS_DIR := $(LOCAL_PATH)/keymaps
# TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/sparta_info
TARGET_PREBUILT_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/sparta_defconfig

# vold.fstab handling
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/eGestured:system/bin/eGestured

include $(GENERIC_X86_ANDROID_MK)

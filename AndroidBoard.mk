LOCAL_PATH := $(call my-dir)
LOCAL_FIRMWARES := iwlwifi-6050-4.ucode LICENSE.iwlwifi
# TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/sparta_info
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/sparta_defconfig

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/eGestured:system/bin/eGestured

include $(GENERIC_X86_ANDROID_MK)

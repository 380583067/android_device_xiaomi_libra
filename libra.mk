DEVICE_PATH := device/xiaomi/libra
BOARD_PLATFORM := msm8992

# Get non-open-source specific aspects
$(call inherit-product, device/xiaomi/msm8994-common/msm8994-common.mk)
$(call inherit-product, vendor/xiaomi/libra/libra-vendor.mk)


DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(DEVICE_PATH)/configs/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# IRQ
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/ft5x46.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x46.kl \
    $(DEVICE_PATH)/keylayout/atmel-maxtouch.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/atmel-maxtouch.kl \
    $(DEVICE_PATH)/keylayout/atmel-maxtouch-edge.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/atmel-maxtouch-edge.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsx_edge.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx_edge.kl

# EdgeGesture
PRODUCT_PACKAGES += \
    EdgeGesture

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-service.xiaomi

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8992

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.libra

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Ramdisk
PRODUCT_PACKAGES += \
    init.fpc.rc \
    init.target.rc

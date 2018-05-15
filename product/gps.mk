DEVICE_PATH := device/samsung/zero-common

# GPS
PRODUCT_PACKAGES += \
    gpsd_shim

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(DEVICE_PATH)/configs/gps.xml:system/etc/gps.xml \
    $(DEVICE_PATH)/configs/lhd.conf:system/etc/lhd.conf


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.gps.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Init
PRODUCT_PACKAGES += \
    init.samsungexynos7420.usb.rc

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-impl \
    android.hardware.usb@1.0-service

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

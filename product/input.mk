DEVICE_PATH := device/samsung/zero-common

# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(DEVICE_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(DEVICE_PATH)/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
    $(DEVICE_PATH)/idc/ft5x06_ts.idc:system/usr/idc/ft5x06_ts.idc \
    $(DEVICE_PATH)/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

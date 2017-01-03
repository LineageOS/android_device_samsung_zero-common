# This device is 640dpi.  However the platform doesn't
# currently contain all of the bitmaps at 640dpi density so
# we do this little trick to fall back to the xxhdpi version
# if the 640dpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 640dpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# MDNIE
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=640 \
    ro.opengles.version=196609

$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

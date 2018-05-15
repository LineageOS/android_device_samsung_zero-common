# Graphics
PRODUCT_PACKAGES += \
    gralloc.exynos5 \
    libhwc2on1adapter \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609 \
    debug.hwc.force_gpu=1

# MDNIE
# PRODUCT_PACKAGES += \
#     AdvancedDisplay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

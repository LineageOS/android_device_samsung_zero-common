PRODUCT_PACKAGES += \
    gralloc.exynos5
    
# hw composer HAL
PRODUCT_PACKAGES += \
    hwcomposer.exynos5

# Memory Tracker HAL
PRODUCT_PACKAGES += \
    memtrack.exynos5

# stagefright and device specific modules
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libExynosOMX_Core
    
# MobiCore
PRODUCT_PACKAGES += \
    mcDriverDaemon


PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.force_gpu=1 \
    ro.bq.gpu_to_cpu_unsupported=1

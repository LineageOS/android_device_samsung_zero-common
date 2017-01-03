PRODUCT_PACKAGES += \
    gralloc.exynos5

PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.force_gpu=1 \
    ro.bq.gpu_to_cpu_unsupported=1


# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos7420/exynos7420.mk)

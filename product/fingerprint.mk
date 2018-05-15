# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.exynos5 \
    libbauthtzcommon_shim \
    android.hardware.biometrics.fingerprint@2.1-impl \
    android.hardware.biometrics.fingerprint@2.1-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

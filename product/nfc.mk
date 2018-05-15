DEVICE_PATH := device/samsung/zero-common

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.0-impl

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(DEVICE_PATH)/configs/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(DEVICE_PATH)/configs/libnfc-sec.conf:system/etc/libnfc-brcm.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

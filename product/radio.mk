ifneq ($(filter zerofltespr zeroltespr,$(TARGET_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += device/samsung/zero-common/overlay-cdma
else
DEVICE_PACKAGE_OVERLAYS += device/samsung/zero-common/overlay-gsm
endif

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Radio
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full \
    libsecril-client \
    libsecril-client-sap \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0

# Network
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Radio Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    rild.libpath=/system/lib64/libsec-ril.so \
    rild.libpath2=/system/lib64/libsec-ril-dsds.so \
    ro.telephony.ril_class=SlteRIL \
    telephony.lteOnGsmDevice=1 \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.default_network=9 \
    ro.use_data_netmgrd=false \
    persist.data.netmgrd.qos.enable=false \
    ro.ril.hsxpa=1 \
    ro.ril.telephony.mqanelements=6 \
    ro.ril.gprsclass=10

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc \

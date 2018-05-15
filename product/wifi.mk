DEVICE_PATH := device/samsung/zero-common

# Ramdisk
PRODUCT_PACKAGES += \
    init.wifi.rc

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    libnetcmdiface \
    libwpa_client \
    macloader \
    wificond \
    wifiloader \
    wifilogd \
    wlutil \
    wpa_supplicant \
    wpa_supplicant.conf \
    android.hardware.wifi@1.0-impl \
    android.hardware.wifi@1.0-service

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/filter_ie:system/etc/wifi/filter_ie

DEVICE_PATH := device/samsung/zero-common

# Media profile
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# media build properties
PRODUCT_PROPERTY_OVERRIDES += \
	media.sf.omx-plugin=libffmpeg_omx.so,libsomxcore.so \
	persist.media.treble_omx=false

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/android.hardware.media.omx@1.0-service.rc:system/vendor/etc/init/android.hardware.media.omx@1.0-service.rc \
    $(DEVICE_PATH)/configs/mediaserver.rc:system/etc/init/mediaserver.rc

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Stagefright-shims
PRODUCT_PACKAGES += \
    libExynosOMX_shim \
    libstagefright_shim \
    libui_shim

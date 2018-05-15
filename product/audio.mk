DEVICE_PATH := device/samsung/zero-common

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    audio.primary.universal7420 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix \
    libtinycompress \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.force_voice_config=wide \
    af.fast_track_multiplier=1

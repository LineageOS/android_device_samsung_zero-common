# Camera-shims
TARGET_LD_SHIM_LIBS += \
        /system/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so \
        /system/lib64/libexynoscamera.so|/vendor/lib64/libexynoscamera_shim.so

# Fingerprint-shims
TARGET_LD_SHIM_LIBS += \
        /system/lib64/hw/fingerprint.default.so|/system/lib64/libbauthtzcommon_shim.so

# GPS-shims
TARGET_LD_SHIM_LIBS += \
        /system/bin/gpsd|/vendor/lib64/gpsd_shim.so

# OpenMAX-shims
TARGET_LD_SHIM_LIBS += \
        /system/lib/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib64/libui_shim.so \
        /system/lib/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib/libui_shim.so \
        /system/lib64/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib64/libui_shim.so

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Camera-shims
TARGET_LD_SHIM_LIBS += \
	/system/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so \
	/system/lib64/libexynoscamera.so|/vendor/lib64/libexynoscamera_shim.so

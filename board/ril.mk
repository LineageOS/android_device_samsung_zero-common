# Radio
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Workaround for non-working incall/callspeaker-mic
RIL_SET_CALL_CLOCK_SYNC_WORKAROUND := true
RIL_SET_TWO_MIC_CONTROL_WORKAROUND := true

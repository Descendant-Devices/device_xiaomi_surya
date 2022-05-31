USE_REFRESH_RATE_LIST := true

# Enable app/sf phase offset as durations. The numbers below are translated from the existing
# positive offsets by finding the duration app/sf will have with the offsets.
# For SF the previous value was 6ms which under 16.6ms vsync time (60Hz) will leave SF with ~10.5ms
# for each frame. For App the previous value was 2ms which under 16.6ms vsync time will leave the
# App with ~20.5ms (16.6ms * 2 - 10.5ms - 2ms). The other values were calculated similarly.
# Full comparison between the old vs. the new values are captured in
# https://docs.google.com/spreadsheets/d/1a_5cVNY3LUAkeg-yL56rYQNwved6Hy-dvEcKSxp6f8k/edit

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.enable_gl_backpressure=0 \
    vendor.display.idle_time=1100

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms?=4000 \
    ro.surface_flinger.set_touch_timer_ms=4000 \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.use_content_detection_for_refresh_rate=true

ifeq ($(USE_REFRESH_RATE_LIST), true)
PRODUCT_PACKAGES += \
    J20CRefreshRateListSettings
else
PRODUCT_PACKAGES += \
    J20CSmoothDisplaySettings
endif

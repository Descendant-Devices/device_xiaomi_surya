#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.aux.packagelist=org.lineageos.snap,net.sourceforge.opencamera,org.codeaurora.snapcam \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
     dalvik.vm.dex2oat64.enabled=true

# Enable inband ringing
PRODUCT_PRODUCT_PROPERTIES += \
    persist.bluetooth.disableinbandringing=false

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    vendor.display.disable_rotator_downscale=1 \
    ro.surface_flinger.has_wide_color_display=false

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.lmk.log_stats=true

# Smart fps switching
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.smart_dfps.enable=false

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.sys.fflag.override.settings_network_and_internet_v2=true \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableDebugLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.ims.disableQXDMLogs=1

# WFD
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_hwc_vds=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

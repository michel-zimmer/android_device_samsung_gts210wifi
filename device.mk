LOCAL_PATH := device/samsung/gts210wifi

# Ramdisk
PRODUCT_PACKAGES += \
    ueventd.universal5433.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/samsung/gts210wifi/overlay

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2018-08-01

# call the proprietary setup
$(call inherit-product, vendor/samsung/gts210wifi/gts210wifi-vendor.mk)

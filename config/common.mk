PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# X-Reality
   PRODUCT_PROPERTY_OVERRIDES += \
   ro.service.swiqi.supported = true \
   persist.service.swiqi.enable = 1 \
   ro.service.swiqi2.supported = true \
   persist.service.swiqi2.enable = 1 \
   ro.service.swiqi3.supported = true \
   persist.service.swiqi3.enable = 1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/liquid/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/liquid/prebuilt/common/bin/50-liquid.sh:system/addon.d/50-liquid.sh \
    vendor/liquid/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/liquid/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Liquid-specific init file
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.local.rc:root/init.slim.rc

# Theme
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/overlay/AllCastNotifications.apk:system/vendor/overlay/AllCastNotifications.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Calculator.apk:system/vendor/overlay/Calculator.apk \
    vendor/liquid/prebuilt/common/etc/overlay/CellBroadcast.apk:system/vendor/overlay/CellBroadcast.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Contacts.apk:system/vendor/overlay/Contacts.apk \
    vendor/liquid/prebuilt/common/etc/overlay/DeskClockNotifications.apk:system/vendor/overlay/DeskClockNotifications.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Dialer.apk:system/vendor/overlay/Dialer.apk \
    vendor/liquid/prebuilt/common/etc/overlay/DropBox.apk:system/vendor/overlay/DropBox.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Eleven.apk:system/vendor/overlay/Eleven.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Framework-res.apk:system/vendor/overlay/Framework-res.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Gmail.apk:system/vendor/overlay/Gmail.apk \
    vendor/liquid/prebuilt/common/etc/overlay/GoogleCalculator.apk:system/vendor/overlay/GoogleCalculator.apk \
    vendor/liquid/prebuilt/common/etc/overlay/GoogleContacts.apk:system/vendor/overlay/GoogleContacts.apk \
    vendor/liquid/prebuilt/common/etc/overlay/GoogleDialer.apk:system/vendor/overlay/GoogleDialer.apk \
    vendor/liquid/prebuilt/common/etc/overlay/GoogleMMS.apk:system/vendor/overlay/GoogleMMS.apk \
    vendor/liquid/prebuilt/common/etc/overlay/GoogleNow.apk:system/vendor/overlay/GoogleNow.apk \
    vendor/liquid/prebuilt/common/etc/overlay/GoogleTranslate.apk:system/vendor/overlay/GoogleTranslate.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Hangouts.apk:system/vendor/overlay/Hangouts.apk \
    vendor/liquid/prebuilt/common/etc/overlay/InboxNotifications.apk:system/vendor/overlay/InboxNotifications.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Keep.apk:system/vendor/overlay/Keep.apk \
    vendor/liquid/prebuilt/common/etc/overlay/LayersManager.apk:system/vendor/overlay/LayersManager.apk \
    vendor/liquid/prebuilt/common/etc/overlay/PackageInstaller.apk:system/vendor/overlay/PackageInstaller.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Phone.apk:system/vendor/overlay/Phone.apk \
    vendor/liquid/prebuilt/common/etc/overlay/PlayMusic.apk:system/vendor/overlay/PlayMusic.apk \
    vendor/liquid/prebuilt/common/etc/overlay/PlayStore.apk:system/vendor/overlay/PlayStore.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Settings.apk:system/vendor/overlay/Settings.apk \
    vendor/liquid/prebuilt/common/etc/overlay/SuperSU.apk:system/vendor/overlay/SuperSU.apk \
    vendor/liquid/prebuilt/common/etc/overlay/SystemUI.apk:system/vendor/overlay/SystemUI.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Telecom.apk:system/vendor/overlay/Telecom.apk \
    vendor/liquid/prebuilt/common/etc/overlay/Velvet.apk:system/vendor/overlay/Velvet.apk \
    vendor/liquid/prebuilt/common/etc/overlay/WhatsApp.apk:system/vendor/overlay/WhatsApp.apk

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Sony Bravia
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/be_movie:system/etc/be_movie \
    vendor/liquid/prebuilt/common/etc/be_photo:system/etc/be_photp \
    vendor/liquid/prebuilt/common/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar \
    vendor/liquid/prebuilt/common/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/liquid/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/liquid/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/liquid/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Layers
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/Layers.apk:system/app/Layers/Layers.apk \

# No Icon for Layers App
PRODUCT_PROPERTY_OVERRIDES += \
    ro.layers.noIcon=noIcon

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    LiveWallpapersPicker \
    PhaseBeam

# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Viper4Android
PRODUCT_PACKAGES += \
    Viper4Android

# Extra Optional packages
PRODUCT_PACKAGES += \
    PerformanceControl \
    SlimLauncher \
    LatinIME \
    BluetoothExt \
    Wallpapers \
    DashClock \
    DeskClock \
    LiveWallpapersPicker \
    Terminal \
    LockClock \
    KernelAdiutor

#    SlimFileManager removed until updated

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# version
RELEASE = false
LIQUID_VERSION_MAJOR = 4
LIQUID_VERSION_MINOR = 1

# release
ifeq ($(RELEASE),true)
    LIQUID_VERSION := LD-LP-MileStone-$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)
else
    LIQUID_VERSION_STATE := $(shell date +%Y%m%d-%H%M)
    LIQUID_VERSION := LD-LP-$(LIQUID_VERSION_STATE)
endif

# HFM Files
PRODUCT_COPY_FILES += \
	vendor/liquid/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
	vendor/liquid/prebuilt/etc/hosts.og:system/etc/hosts.og

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.liquid.version=$(LIQUID_VERSION)

ifeq ($(TARGET_ENABLE_UKM),true)
-include vendor/liquid/config/common_ukm.mk
endif

INSTALL_TARGET_PROCESSES = SpringBoard

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
export ARCHS = arm64 arm64e
export TARGET = iphone:clang:14.5:15.0
else
export ARCHS = arm64 arm64e
export TARGET = iphone:clang:14.5:14.0
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AppLibraryDisabler

$(TWEAK_NAME)_FILES = $(TWEAK_NAME).xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

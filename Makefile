ARCHS = arm64
TARGET = iphone:clang:14.5:14.5
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PESSalahPro
PESSalahPro_FILES = Tweak.x
PESSalahPro_CFLAGS = -fobjc-arc -w
PESSalahPro_LDFLAGS = -lFoundation -lobjc

include $(THEOS_MAKE_PATH)/tweak.mk

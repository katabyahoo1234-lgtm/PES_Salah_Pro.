export THEOS=/opt/theos
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PES_Salah_Pro
PES_Salah_Pro_FILES = Tweak.X
PES_Salah_Pro_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk

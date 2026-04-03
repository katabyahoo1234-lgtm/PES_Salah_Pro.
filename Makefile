# إعدادات الهدف: نحدد الإصدار 14.5 ليتطابق مع الـ SDK المحمل في الأكشنز
TARGET := iphone:clang:latest:14.5
INSTALL_TARGET_PROCESSES = SpringBoard

# استدعاء ملفات الثيوس الأساسية
include $(THEOS)/makefiles/common.mk

# اسم التعديل (يجب أن يكون مطابقاً لما تريده في ملف الـ control)
TWEAK_NAME = PES_Salah_Pro

# الملفات البرمجية: تأكد أن ملف الكود عندك اسمه Tweak.x بالضبط
PES_Salah_Pro_FILES = Tweak.x
PES_Salah_Pro_CFLAGS = -fobjc-arc

# استدعاء قواعد بناء التويك
include $(THEOS_MAKE_PATH)/tweak.mk

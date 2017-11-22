QT       -= core gui

TARGET = coders
TEMPLATE = lib
CONFIG += staticlib

DEFINES += MAGICKCORE_HDRI_ENABLE=0
DEFINES += MAGICKCORE_QUANTUM_DEPTH=8

LIBS += -L../libjpeg -ljpeg -L../libpng -lpng -L../libtiff -ltiff

include("../include/files_coders.pri")

INCLUDEPATH += ../../jni/opencl/include
contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    LIBS += -L../../jni/opencl/lib
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}

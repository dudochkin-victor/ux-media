### eqmake4 was here ###
CONFIG -= debug_and_release debug
CONFIG += release

include(../common.pri)
TEMPLATE = lib
TARGET = Media

CONFIG += plugin
QT += declarative

INCLUDEPATH += ../lib
LIBS += -L../lib -lmeegouxmedia

OBJECTS_DIR = .obj
MOC_DIR = .moc

SOURCES += \
    mediaqml.cpp

HEADERS += \
    mediaqml.h

target.path += $$[QT_INSTALL_IMPORTS]/MeeGo/Media
INSTALLS += target

qmldir.files += qmldir
qmldir.path += $$[QT_INSTALL_IMPORTS]/MeeGo/Media
INSTALLS += qmldir

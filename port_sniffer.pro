#-------------------------------------------------
#
# PortSniffer https://github.com/sirgal/Port-Sniffer
# forked https://github.com/j2doll/Port-Sniffer
# using Qt5
#
#-------------------------------------------------

TARGET = port_sniffer
TEMPLATE = app

QT += core
QT += gui
QT += serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QMAKE_CXXFLAGS += -std=c++11

include(parser/parser.pri)
include(ports/ports.pri)
include(channels/channels.pri)

SOURCES += \
main.cpp \
mainwindow.cpp \
drawdata.cpp \
portdatasorter.cpp \
settingguiwireup.cpp

HEADERS += \
mainwindow.h \
drawdata.h \
portdatasorter.h \
paramstringprocessor.h \
selfresizinglabel.h \
lineeditwithfocussignals.h \
dataholder.h \
settingguiwireup.h

# INCLUDEPATH += .

FORMS += mainwindow.ui

# LIBS += -llibparser

# win32:CONFIG(release, debug|release): LIBS += -L$$PWD/build/build-parser-lib/release/ -llibparser
# else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/build/build-parser-lib/debug/ -llibparser
# else:unix: LIBS += -L$$PWD/build/build-parser-lib/ -llibparser

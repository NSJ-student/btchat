# sudo apt-get install libqt5bluetooth5 qtconnectivity5-dev
# libqt5nfc5_5.12.8-0ubuntu1_arm64.deb
# qtconnectivity5-dev_5.12.8-0ubuntu1_arm64.deb
# libqt5bluetooth5_5.12.8-0ubuntu1_arm64.deb
# libqt5bluetooth5-bin_5.12.8-0ubuntu1_arm64.deb

# https://forum.qt.io/topic/114503/missing-cap_net_admin-permission/2
# /etc/dbus-1/system.d/bluetooth.conf

TEMPLATE = app
TARGET = btchat

QT = core bluetooth widgets
requires(qtConfig(listwidget))
android: QT += androidextras

SOURCES = \
    main.cpp \
    chat.cpp \
    remoteselector.cpp \
    chatserver.cpp \
    chatclient.cpp

HEADERS = \
    chat.h \
    remoteselector.h \
    chatserver.h \
    chatclient.h

FORMS = \
    chat.ui \
    remoteselector.ui

target.path = $$[QT_INSTALL_EXAMPLES]/bluetooth/btchat
INSTALLS += target

DISTFILES += \
    bluetooth_setting.sh

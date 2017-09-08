################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="dosemu"
PKG_VERSION="2.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Joerg Mueller-Hipper, Robert Dinse, Fred Brodmueller, Christian Steineck"
PKG_SITE="http://i8086emu.sourceforge.net"
#PKG_URL="$SOURCEFORGE_SRC/projects/$PKG_NAME/files/i8086emu-src/$PKG_VERSION/i8086emu-src-$VERSION.tar.gz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="apps"
PKG_SHORTDESC="An 8086 emulator"
PKG_LONGDESC="i8086emu is an multi-platform emulator for the Intel 8086 microprocessor.  It has support for dynamically loadable device plugins and some peripherals like a PIT, PIC, 8-segment-displays, buttons and leds. i8086emu comes with an ncurses and an GTK-2 gui. i8086emu should run on most linux distributions and cygwin environments." 
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

unpack() {
  tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $ROOT/$BUILD
}

pre_configure_target() {
  sh autogen.sh --host=$TARGET_NAME
}

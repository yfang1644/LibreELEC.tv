################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="fake86"
PKG_VERSION="0.13.9.16"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="miker00lz <at> gmail <dot> com"
PKG_SITE="http://fake86.rubbermallet.org"
#PKG_URL="$SOURCEFORGE_SRC/projects/$PKG_NAME/files/i8086emu-src/$PKG_VERSION/i8086emu-src-$VERSION.tar.gz"
PKG_DEPENDS_TARGET="SDL libX11"

PKG_SECTION="apps"
PKG_SHORTDESC="An 8086 emulator"
PKG_LONGDESC="An 8086 emulator"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

unpack() {
  tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $ROOT/$BUILD
}

make_target() {
  make CC=$TARGET_CC \
	  LDFLAGS="-L$SYSROOT_PREFIX/usr/lib -Wl,-rpath-link,$SYSROOT_PREFIX/usr/lib"
}

make_install_target() {
   make install DESTDIR=$ROOT/$BUILD_PKG/.install_pkg
}

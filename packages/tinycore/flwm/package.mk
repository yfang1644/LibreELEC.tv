################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="flwm"
PKG_VERSION="1.02"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Bill Spitzak <spitzak@d2.com>"
PKG_SITE="http://flwm.sourceforce.net"
PKG_URL="$SOURCEFORGE_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tgz"
PKG_DEPENDS_TARGET="fltk"
PKG_SECTION="tinycore"
PKG_SHORTDESC="Fastest Light Weight Window Manager"
PKG_LONGDESC="Fastest Light Weight Window Manager"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_configure_target () {
   cd ..
}

pre_make_target() {
  sed -i '444,445s/extern//' Frame.C
  sed -i 's/^LIBS =.*$/LIBS = -lfltk -lXrender -lXcursor -lXinerama/g' Makefile
}

makeinstall_target(){
  mkdir -p $INSTALL/usr/bin
 	cp flwm $INSTALL/usr/bin
  mkdir -p $SYSROOT_PREFIX/usr/bin
	cp flwm $SYSROOT_PREFIX/usr/bin
}

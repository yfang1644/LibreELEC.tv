################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="wbar"
PKG_VERSION="2.3.1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="(Rodolfo Granata) <warlock.cc(at)gmail.com>"
#PKG_SITE="http://github.com/rodolf0"
#PKG_URL="http://github.com/rodolf0/wbar.git"
PKG_DEPENDS_TARGET="imlib2 fltk libglade libX11"
PKG_SECTION="tinycore"
PKG_SHORTDESC="Wbar is a quick launch bar."
PKG_LONGDESC="Wbar is a quick launch bar. It's fast, light and cool eye-candy. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="LIBS=-lgmodule-2.0"

unpack() {
    tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2 -C $BUILD
}

pre_configure_target() {
  (
    cd $PKG_BUILD
    sh autogen.sh --host=$TARGET_NAME
  )
}

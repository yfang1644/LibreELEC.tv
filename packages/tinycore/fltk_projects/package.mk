################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="fltk_projects"
PKG_VERSION="0.0.2"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.tintcorelinux.org/"
PKG_URL=""
PKG_DEPENDS_TARGET="fltk"

PKG_SECTION="tinycore"
PKG_SHORTDESC=""
PKG_LONGDESC="."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

unpack(){
   tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2 -C $ROOT/$BUILD
}

configure_target() {
   : # nothing todo
}

pre_make_target() {
    export FLUID=/usr/bin/fluid
    export fltk_config_cmd=$SYSROOT_PREFIX/usr/bin/fltk-config
    export LDFLAGS="$LDFLAGS -lfltk"
}

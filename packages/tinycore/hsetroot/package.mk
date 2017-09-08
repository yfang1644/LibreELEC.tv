################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="hsetroot"
PKG_VERSION="1.0.2"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Hyriand <hyriand@thegraveyard.org>"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="imlib2 libX11"
PKG_SECTION="tinycore"
PKG_SHORTDESC="H set root wallpaper"
PKG_LONGDESC="hsetroot -- Yet another wallpaper application."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_prog_imlib2config_cmd=$SYSROOT_PREFIX/usr/bin/imlib2-config"

unpack() {
    tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $BUILD
}

pre_configure_target() {
    LDFLAGS="$LDFLAGS -lX11 -lImlib2"
}

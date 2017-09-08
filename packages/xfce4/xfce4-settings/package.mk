################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfce4-settings"
PKG_VERSION="4.13.1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Stephan Arts <stephan@xfce.org>"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/4.13/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="glib garcon exo fontconfig libxfce4util"
PKG_SECTION="xfce4"
PKG_SHORTDESC="xfce4 settings"
PKG_LONGDESC="xfce4 settings"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

CFLAGS="-I$SYSROOT_PREFIX/usr/include/dbus-1.0 -I$SYSROOT_PREFIX/usr/lib/dbus-1.0/include"
PKG_CONFIGURE_OPTS_TARGET=""

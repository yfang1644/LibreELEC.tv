################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfce4-session"
PKG_VERSION="4.13.0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Benedikt Meurer <benny@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/4.13/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libxfce4ui libwnck libSM"
PKG_SECTION="xfce4"
PKG_SHORTDESC="xfce4 session manager"
PKG_LONGDESC="xfce4 session manager"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

CFLAGS="-I$SYSROOT_PREFIX/usr/include/dbus-1.0 -I$SYSROOT_PREFIX/usr/lib/dbus-1.0/include"
PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_malloc_0_nonnull=yes"

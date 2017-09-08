################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfce4-power-manager"
PKG_VERSION="1.6.0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Ali Abdallah <aliov@xfce.org>"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/1.6/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="upower xrandr libnotify"
PKG_SECTION="xfce4"
PKG_SHORTDESC="power manager"
PKG_LONGDESC="xfce4 power manager"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

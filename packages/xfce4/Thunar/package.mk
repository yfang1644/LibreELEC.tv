################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="Thunar"
PKG_VERSION="1.6.12"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="nedikt Meurer <benny@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/thunar/1.6/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="xfce4-panel"
PKG_SECTION="xfce4"
PKG_SHORTDESC="Thunar is a modern file manager for the Unix/Linux desktop, aiming to be easy-to-use and fast. "
PKG_LONGDESC="Thunar is a modern file manager for the Unix/Linux desktop, aiming to be easy-to-use and fast. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-exif"

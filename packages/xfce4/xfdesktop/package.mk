################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfdesktop"
PKG_VERSION="4.13.1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Benedikt Meurer <benny@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/4.13/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="exo xfconf gtk3 libwnck"
PKG_SECTION="xfce4"
PKG_SHORTDESC="Xfce4 desktop manager"
PKG_LONGDESC="Xfdesktop is a desktop manager for the Xfce Desktop Environment. Desktop in this respect means the root window (or, rather, a window that sits on top of the root window). "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

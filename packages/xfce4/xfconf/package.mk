################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfconf"
PKG_VERSION="4.13.3"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Stephan Arts <stephan@xfce.org>, Brian J. Tarricone <bjt23@cornell.edu>"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/4.13/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="dbus-glib libxfce4util"
PKG_SECTION="xfce4"
PKG_SHORTDESC="Xfce4 configures"
PKG_LONGDESC="Xfce4 configures"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

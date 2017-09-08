################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfce4-appfinder"
PKG_VERSION="4.13.0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Jannis Pohlmann <jannis@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/4.13/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="garcon"
PKG_SECTION="xfce4"
PKG_SHORTDESC="xfce4 Find applications"
PKG_LONGDESC="xfce4 find applications applet"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_make_target() {
  sed -i "1086c    gtk_menu_popup (GTK_MENU (menu), NULL,\n    NULL, NULL, NULL, 3,   \n     gtk_get_current_event_time ());" ../src/appfinder-window.c
}

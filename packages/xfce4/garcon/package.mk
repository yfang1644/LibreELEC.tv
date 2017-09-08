################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="garcon"
PKG_VERSION="0.6.1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Jannis Pohlmann <jannis@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/0.6/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libxfce4ui"

PKG_SECTION="xfce4"
PKG_SHORTDESC="Garcon is a freedesktop.org compliant menu implementation based on GLib and GIO."
PKG_LONGDESC="Garcon is a freedesktop.org compliant menu implementation based on GLib and GIO. It was started as a complete rewrite of the former Xfce menu library called libxfce4menu, which, in contrast to garcon, was lacking menu merging features essential for loading menus modified with menu editors. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

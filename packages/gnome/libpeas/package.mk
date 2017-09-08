################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libpeas"
PKG_VERSION="1.10.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Joe Shaw, Dan Winship"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/1.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib gobject-introspection"

PKG_SECTION="gnome"
PKG_SHORTDESC="libsoup is an HTTP client/server library for GNOME."
PKG_LONGDESC="libsoup is an HTTP client/server library for GNOME."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

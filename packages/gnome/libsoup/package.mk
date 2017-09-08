################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libsoup"
PKG_VERSION="2.48.0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Joe Shaw, Dan Winship"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.48/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib sqlite libxml2"
PKG_SECTION="gnome"
PKG_SHORTDESC="libsoup is an HTTP client/server library for GNOME."
PKG_LONGDESC="libsoup is an HTTP client/server library for GNOME."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
				  --disable-glib-test \
				  --with-gnome"

post_configure_target() {
  sed -i 's/-Werror=format=2//g' tests/Makefile
}

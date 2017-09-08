################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="epiphany"
PKG_VERSION="3.16.2"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Xan López<xan@gnome.org>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.16/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libwnck avahi gcr sqlite"

PKG_SECTION="gnome"
PKG_SHORTDESC="Epiphany is a GNOME web browser based on the WebKit rendering engine."
PKG_LONGDESC="Epiphany is a GNOME web browser based on the WebKit rendering engine."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-nss --disable-tests"

export CFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gtk-3.0 \
	-I$SYSROOT_PREFIX/usr/include/gcr-3 \
	-I$SYSROOT_PREFIX/usr/include/gck-1 \
	-I$SYSROOT_PREFIX/usr/include/p11-kit-1 \
	-I$SYSROOT_PREFIX/usr/include/libsoup-2.4 \
	-I$SYSROOT_PREFIX/usr/include/libsecret-1 \
	-I$SYSROOT_PREFIX/usr/include/libxml2 \
	-I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
  sed -i 's/-Werror=format=2//g' `find . -name Makefile`
}

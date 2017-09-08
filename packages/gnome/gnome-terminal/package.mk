################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gnome-terminal"
PKG_VERSION="3.16.2"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Guilherme de S. Pastore <gpastore@gnome.org>, et al"
PKG_SITE="https://wiki.gnome.org/Apps/Terminal"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.16/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib gtk+ dconf vte GConf gsettings-desktop-schemas"
PKG_SECTION="gnome"
PKG_SHORTDESC="A terminal emulator for GNOME."
PKG_LONGDESC="A terminal emulator for GNOME."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-dbus-interface-dir=/usr/share/dbus-1/interfaces \
						  --with-dbus-service-dir=/usr/share/dbus-1/services \
						  --without-nautilus-extension \
						  --disable-search-provider"

export CFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gtk-3.0 \
	-I$SYSROOT_PREFIX/usr/include/gio-unix-2.0 \
	-I$SYSROOT_PREFIX/usr/include/uuid \
	-I$SYSROOT_PREFIX/usr/include/dconf \
	-I$SYSROOT_PREFIX/usr/include/gconf/2 \
	-I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
}


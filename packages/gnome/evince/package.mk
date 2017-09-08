################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="evince"
PKG_VERSION="3.18.2"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Martin Kretzschmar <m_kretzschmar@gmx.net>, et al"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.18/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gtk3 libsecret djvulibre poppler adwaita-icon-theme gst-plugins-base libxml2"

PKG_SECTION="gnome"
PKG_SHORTDESC="Evince is a document viewer capable of displaying multiple and single page document formats like PDF and Postscript. "
PKG_LONGDESC="Evince is a document viewer capable of displaying multiple and single page document formats like PDF and Postscript."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

export CFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gtk-3.0 \
	-I$SYSROOT_PREFIX/usr/include/libsecret-1 \
	-I$SYSROOT_PREFIX/usr/lib/gstreamer-1.0/include \
	-I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

export CXXFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
	-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
	-I$SYSROOT_PREFIX/usr/include/libxml2 \
	-I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

PKG_CONFIGURE_OPTS_TARGET="--disable-nautilus \
			  --without-gtk-unix-print \
			GSTREAMER_CFLAGS=-I$SYSROOT_PREFIX/usr/include/gstreamer-1.0 \
			GSTREAMER_LIBS=-lgstvideo-1.0"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
  sed -i 's/-Werror=format=2//g' `find . -name Makefile`
  sed -i '529s/\%c/\%C/' ../libdocument/ev-document-misc.c
}


################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="vte"
PKG_VERSION="0.42.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="ehdad Esfahbod<behdad@gnome.org>, Chris Wilson<chris@chris-wilson.co.uk>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.42/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gtk3"

PKG_SECTION="gnome"
PKG_SHORTDESC="Virtual Terminal Emulator"
PKG_LONGDESC="VTE is a library (libvte) implementing a terminal emulator widget for GTK+, and a minimal sample application (vte) using that."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
						   --disable-test-application
						   --without-gnutls \
						   --disable-gtk-doc \
						   --disable-gtk-doc-html \
						   --disable-gtk-doc-pdf \
						   --disable-vala"

CFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
          -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
          -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

CXXFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
          -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
          -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
}


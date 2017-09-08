################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gnome-video-effects"
PKG_VERSION="0.4.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Federico Mena Quintero <federico@gnome.org>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.4/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="gnome-desktop contains the libgnome-desktop library, the gnome-about program as well as some desktop-wide documents."
PKG_LONGDESC="gnome-desktop contains the libgnome-desktop library, the gnome-about program as well as some desktop-wide documents. The libgnome-desktop library provides API shared by several applications on the desktop. Documentation for the API is available with gtk-doc. The gnome-about program helps find which version of GNOME is installed. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
export CFLAGS="-I$SYSROOT_PREFIX/usr/include/glib-2.0 \
               -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include \
               -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
}

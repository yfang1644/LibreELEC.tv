################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="clutter"
PKG_VERSION="1.22.4"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Emmanuele Bassi <ebassi@gnome.org>"
PKG_SITE="https://blogs.gnome.org/clutter"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/1.22/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="cogl json-glib"

PKG_SECTION="gnome"
PKG_SHORTDESC="Clutter is a toolkit for creating compelling, dynamic, and portable graphical user interfaces. "
PKG_LONGDESC="Clutter is a toolkit for creating compelling, dynamic, and portable graphical user interfaces. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
						  --disable-examples \
						  --disable-deprecated \
						  --disable-glibtest"

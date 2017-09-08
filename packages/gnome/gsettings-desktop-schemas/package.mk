################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gsettings-desktop-schemas"
PKG_VERSION="3.10.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Bastien Nocera<hadess@hadess.net>"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="gsettings desktop schemas"
PKG_LONGDESC="gsettings-desktop-schemas contains a collection of GSettings schemas for settings shared by various components of a desktop."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-gtk-doc \
						  --disable-gtk-doc-html \
						  --disable-gtk-doc-pdf \
						  ac_cv_file__dev_random=/dev/random"

pre_make_target() {
   sed -i 's/-L\/lib\/x86_64-linux-gnu/-lgmodule-2.0/' `find . -name Makefile`
}

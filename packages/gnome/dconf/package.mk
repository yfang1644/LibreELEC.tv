################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="dconf"
PKG_VERSION="0.19.2"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Ryan Lortie <desrt@desrt.ca>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.19/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gtk3"

PKG_SECTION="gnome"
PKG_SHORTDESC="dconf is a simple key/value storage system that is heavily optimised for reading."
PKG_LONGDESC="dconf is a simple key/value storage system that is heavily optimised for reading."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="CC=$TARGET_CC \
						  CXX=$TARGET_CXX \
						  --disable-glibtest \
						  --disable-gtk-doc \
						  --disable-gtk-doc-html \
						  --disable-gtk-doc-pdf \
						  --disable-man"

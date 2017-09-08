################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gcr"
PKG_VERSION="3.10.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Stef Walter <stefw@collabora.co.uk>"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="p11-kit libgcrypt"

PKG_SECTION="gnome"
PKG_SHORTDESC="Library for displaying certificates, accessing PKCS#11"
PKG_LONGDESC="GCR is a library for displaying certificates, and crypto UI, accessing key stores. It also provides the viewer for crypto files on the GNOME desktop. GCK is a library for accessing PKCS#11 modules like smart cards, in a (G)object oriented way"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-libgcrypt-prefix=$SYSROOT_PREFIX/usr/ \
						  --without-gtk"

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libsecret"
PKG_VERSION="0.14"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Stef Walter <stefw@collabora.co.uk>"
PKG_SITE="https://wiki.gnome.org/Apps/Evince"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.14/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libgcrypt"

PKG_SECTION="gnome"
PKG_SHORTDESC="GObject based library for accessing the Secret Service API. "
PKG_LONGDESC="GObject based library for accessing the Secret Service API. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
			   --disable-manpages \
			   --with-libgcrypt-prefix=$SYSROOT_PREFIX/usr"

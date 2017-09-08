################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libbonobo"
PKG_VERSION="2.32.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Gustavo Carneiro<gjc@inescporto.pt>"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.32/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="popt"

PKG_SECTION="gnome"
PKG_SHORTDESC="Non-GUI part of the bonobo component"
PKG_LONGDESC="libbonobo is the non-GUI part of the bonobo component infrastructur"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

export GTHREAD_CFLAGS="-I$SYSROOT_PREFIX/usr/include"
export GTHREAD_LIBS="-L$SYSROOT_PREFIX/usr/lib -lgthread-2.0"

PKG_CONFIGURE_OPTS_TARGET="--enable-threads"

pre_make_target() {
  sed -i 's/-DG_DISABLE_DEPRECATED//g' activation-server/Makefile
}

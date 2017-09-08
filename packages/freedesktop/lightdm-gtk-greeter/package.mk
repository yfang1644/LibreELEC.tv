################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="lightdm-gtk-greeter"
PKG_VERSION="1.9.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Sean Davis <smd.seandavis@gmail.com>"
PKG_SITE="https://www.freedesktop.org/wiki/Software/LightDM/"
PKG_URL="https://launchpad.net/$PKG_NAME/1.9/$PKG_VERSION/+download/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="glib gtk3"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="LightDM is a cross-desktop display manager. "
PKG_LONGDESC="LightDM is a cross-desktop display manager. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--without-libxklavier \
						  --disable-at-spi-command \
						  --disable-indicator-services-command \
						  --disable-introspection \
						  CFLAGS=-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
  sed -i 's/-Werror=format=2//g' `find . -name Makefile`
}


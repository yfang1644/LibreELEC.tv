################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="lbreakout2"
PKG_VERSION="2.6.5"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Michael Speck <kulkanie@gmx.net>"
PKG_SITE="http://lgames.sourceforge.net"
PKG_URL="http://prdownloads.sourceforge.net/lgames/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libpng SDL_mixer"

PKG_SECTION="apps"
PKG_SHORTDESC="breakout game using SDL"
PKG_LONGDESC="breakout game using SDL"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-sdl-prefix=$SYSROOT_PREFIX/usr"

pre_configure_target() {
  cd ../
}

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="lightdm"
PKG_VERSION="1.18.2"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Robert Ancell <robert.ancell@canonical.com>, et al"
PKG_SITE="https://www.freedesktop.org/wiki/Software/LightDM/"
PKG_URL="https://launchpad.net/lightdm/1.18/$PKG_VERSION/+download/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libxklavier Linux-PAM"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="LightDM is a cross-desktop display manager. "
PKG_LONGDESC="LightDM is a cross-desktop display manager. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-tests \
						  --disable-introspection"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
}


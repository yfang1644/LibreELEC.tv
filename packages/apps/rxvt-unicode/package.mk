################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="rxvt-unicode"
PKG_VERSION="1.0.0"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Geoff Wing <gcw@pobox.com> et al"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="netbsd-curses libXft glib gdk-pixbuf"
PKG_SECTION="apps"
PKG_SHORTDESC="Unicode Terminal in X"
PKG_LONGDESC="Unicode Terminal in X"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-perl"

unpack()
{
   tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2 -C $BUILD
}

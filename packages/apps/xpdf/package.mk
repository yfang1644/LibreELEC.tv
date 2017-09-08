################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xpdf"
PKG_VERSION="3.04"

PKG_ARCH="any"
PKG_LICENSE=""
PKG_SITE="https://wiki.gnome.org/Apps/Evince"
PKG_URL="ftp://ftp.foolabs.com/pub/xpdf/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="freetype motif"

PKG_SECTION="apps"
PKG_SHORTDESC=""
PKG_LONGDESC="."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-freetype2-library=$SYSROOT_PREFIX/usr/lib \
          --with-freetype2-includes=$SYSROOT_PREFIX/usr/freetype2 "

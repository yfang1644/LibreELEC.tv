################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libspectre"
PKG_VERSION="0.2.7"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER=""
PKG_SITE="https://www.freedesktop.org/wiki/Software/libspectre/"
PKG_URL="http://$PKG_NAME.freedesktop.org/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="libspectre is a small library for rendering Postscript documents. It provides a convenient easy to use API for handling and rendering Postscript documents."
PKG_LONGDESC="libspectre is a small library for rendering Postscript documents. It provides a convenient easy to use API for handling and rendering Postscript documents."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_make_target() {
   sed -i 's/-L\/lib\/x86_64-linux-gnu//' `find . -name Makefile`
}

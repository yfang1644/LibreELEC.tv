################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="imlib2"
PKG_VERSION="1.4.7"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="arsten Haitzler) <raster@rasterman.com>, el al"
PKG_SITE="http://enlightenment.org/"
PKG_URL="$SOURCEFORGE_SRC/enlightenment/$PKG_NAME-src/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="freetype libjpeg-turbo"
PKG_SECTION="enlightenment"
PKG_SHORTDESC="Image Library v2"
PKG_LONGDESC="This is the Imlib 2 library - a library that does image file
loading and saving as well as rendering, manipulation, arbitrary polygon
support, etc."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

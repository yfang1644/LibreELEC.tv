################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="rage"
PKG_VERSION="0.1.4"

PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="Carsten Haitzler<raster@rasterman.com>, Eduardo Lima (Etrunko) <eblima@gmail.com>"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/apps/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="efl"

PKG_SECTION="Enlightenment"
PKG_SHORTDESC="Enlightenment video player"
PKG_LONGDESC="This is a Video + Audio player along the lines of mplayer."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-edje-cc=/usr/local/bin/edje_cc"

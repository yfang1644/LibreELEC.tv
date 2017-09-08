################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="emotion_generic_players"
PKG_VERSION="1.17.0"

PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="Carsten Haitzler (Rasterman) <raster@rasterman.com>, et al"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/libs/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="vlc efl"

PKG_SECTION="Enlightenment"
PKG_SHORTDESC="Emotion Generic Players"
PKG_LONGDESC="Emotion supports multiple modules provided as shared-objects under
PREFIX/lib/emotion/modules, making it extensible. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

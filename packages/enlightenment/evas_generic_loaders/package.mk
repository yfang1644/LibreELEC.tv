################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="evas_generic_loaders"
PKG_VERSION="1.17.0"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINRE="The Rasterman (Carsten Haitzler) <raster@rasterman.com>, et al"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/libs/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="efl emotion_generic_players"
PKG_SECTION="Enlightenment"
PKG_SHORTDESC="evas generic loaders"
PKG_LONGDESC="These are additional 'generic' loaders for Evas that are stand-alone executables that evas may run from its generic loader module. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

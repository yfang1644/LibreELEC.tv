################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="elementary"
PKG_VERSION="1.17.1"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="The Rasterman (Carsten Haitzler) <raster@rasterman.com>, et al"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/libs/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="vlc efl"
PKG_SECTION="enlightenment"
PKG_SHORTDESC="Enlightenment Elementary"
PKG_LONGDESC="Elementary is a basic widget set library that is easy to use and is based on EFL. It provides the basic building blocks for creating applications and user interfaces. " 

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-edje-cc=/usr/local/bin/edje_cc \
						   --with-eet-eet=/usr/local/bin/eet \ 
						   --with-eolian-gen=/usr/local/bin/eolian_gen \
						   --with-elm-prefs-cc=/usr/local/bin/elm_prefs_cc \
						   --with-eolian-cxx=/usr/local/bin/eolian_cxx \
						   --with-elua=/usr/local/bin/elua \
						   --with-elementary-codegen=/usr/local/bin/elementary_codegen"

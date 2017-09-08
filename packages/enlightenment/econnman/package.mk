################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="econnman"
PKG_VERSION="1.1"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/apps/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="efl emotion_generic_players evas_generic_loaders"
PKG_SECTION="Enlightenment"
PKG_SHORTDESC=""
PKG_LONGDESC="Enlightenment"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-edje-cc=/usr/local/bin/edje_cc"

pre_make_target(){
    export LD_LIBRARY_PATH=/usr/local/lib
}

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="terminology"
PKG_VERSION="1.1.0"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="Boris Faure <billiob@gmail.com>, et al"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/apps/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="efl"
PKG_SECTION="Enlightenment"
PKG_SHORTDESC="EFL terminal emulator"
PKG_LONGDESC="Enlightenment terminal"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-edje-cc=/usr/local/bin/edje_cc"

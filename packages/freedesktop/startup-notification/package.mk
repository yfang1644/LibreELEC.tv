################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="startup-notification"
PKG_VERSION="0.12"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Havoc Pennington<hp@redhat.com>,Julien Danjou<julien@danjou.info>"
PKG_SITE="http://freedesktop.org/"
PKG_URL="http://www.freedesktop.org/software/startup-notification/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="xcb-util"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="startup-notification"
PKG_LONGDESC="startup-notification"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="lf_cv_sane_realloc=yes"

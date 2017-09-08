################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="pm-utils"
PKG_VERSION="1.4.1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Victor Lowther <victor.lowther@gmail.com>"
#PKG_SITE="http://www.xfce.org/"
#PKG_URL="http://archive.xfce.org/xfce/4.12/src/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET=""
PKG_SECTION="xfce4"
PKG_SHORTDESC="Xfce4 power manager utility"
PKG_LONGDESC="Pm-utils provides simple shell command line tools to suspend and hibernate computer that can be used to run vendor, distribution, or user supplied scripts on suspend and resume."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

unpack() {
    tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $BUILD
}

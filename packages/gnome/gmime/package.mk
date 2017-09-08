################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gmime"
PKG_VERSION="2.6.20"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Jeffrey Stedfast <fejj@gnome.org>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.6/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="GMime is a C/C++ library for parsing and creating messages using the Multipurpose Internet Mail Extension (MIME)"
PKG_LONGDESC="GMime is a C/C++ library for parsing and creating messages using the Multipurpose Internet Mail Extension (MIME)"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_have_iconv_detect_h=yes"

pre_configure_target() {
   (
      cp $PKG_DIR/config/iconv-detect.h .
   )
}

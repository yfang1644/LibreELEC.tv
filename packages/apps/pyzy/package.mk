################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="pyzy"
PKG_VERSION="1.0"

PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_MAINTAINER="Peng Huang <shawn.p.huang@gmail.com>, BYVoid <byvoid1@gmail.com>, Peng Wu <alexepico@gmail.com>,Hiroshi Sumita <sumita12@gmail.com>"
PKG_SITE="https://github.com/pyzy/pyzy"
#PKG_URL="https://github.com/ibus/ibus/releases/download/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="apps"
PKG_SHORTDESC="The Chinese PinYin and Bopomofo conversion library."
PKG_LONGDESC="The Chinese PinYin and Bopomofo conversion library."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
unpack() {
  tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $ROOT/$BUILD
}

pre_configure_target (){
  sed -i "s:#define PINYIN_ID_VOID.*$:#define PINYIN_ID_VOID ((char)(-1)):" \
	  src/Types.h

  autoreconf -ivf
}

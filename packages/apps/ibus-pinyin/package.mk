################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="ibus-pinyin"
PKG_VERSION="1.5.0"

PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_MAINTAINER="Peng Huang <shawn.p.huang@gmail.com>"
PKG_SITE="https://github.com/ibus/ibus/wiki"
PKG_URL="https://github.com/ibus/ibus-pinyin/archive/1.5.0.tar.gz"
PKG_DEPENDS_TARGET="pyzy ibus"

PKG_SECTION="apps"
PKG_SHORTDESC="IBus is an Intelligent Input Bus."
PKG_LONGDESC="IBus is an Intelligent Input Bus. It is a new input framework for Linux OS. It provides full featured and user friendly input method user interface. It also may help developers to develop input method easily."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

unpack() {
  tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_VERSION.tar.gz -C $ROOT/$BUILD
}

pre_configure_target() {
  sh autogen.sh --host=$HOST_NAME
}

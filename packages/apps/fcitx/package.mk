################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="fcitx"
PKG_VERSION="4.2.8.2"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Yuking <yuking_net@sohu.com>,CSSlayer <wengxt@gmail.com>,Yichao Yu <yyc1992@gmail.com>"
PKG_SITE="https://fcitx-im.org/wiki/Fcitx"
PKG_URL="https://download.fcitx-im.org/fcitx/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gettext"

PKG_SECTION="apps"
PKG_SHORTDESC="An input method framework with extension support."
PKG_LONGDESC="Fcitx is an input method framework with extension support. Currently it supports Linux and Unix systems like freebsd. It has three built-in Input Method Engine, Pinyin, QuWei and Table-based input methods."
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
configure_target() {
  cmake -DCMAKE_TOOLCHAIN_FILE=$CMAKE_CONF \
	    -DCMAKE_FIND_ROOT_PATH=$SYSROOT_PREFIX \
	    -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=/usr/lib \
        -DCMAKE_PREFIX_PATH=$SYSROOT_PREFIX/usr \
        -DENABLE_GETTEXT=OFF \
    -DLIBINTL_INCLUDE_DIR=$CROSSTOOL_PATH/arm-none-linux-gnueabi/usr/include \
    -DLIBICONV_INCLUDE_DIR=$CROSSTOOL_PATH/arm-none-linux-gnueabi/usr/include \
       -DPTHREAD_INCLUDE_DIR=$SYSROOT_PREFIX/usr/include \
       -DDL_INCLUDE_DIR=$SYSROOT_PREFIX/usr/include \
       -DLIBEXECINFO_INCLUDE_DIR=$SYSROOT_PREFIX/usr/include \
		-DENABLE_OPENCC=OFF \
		-DGOBJECT_INTROSPECTION=OFF \
		-DENABLE_QT=OFF \
        ..
}
		#-DENABLE_LIBXML2=OFF \
	#	-DENABLE_PRESAGE=OFF \


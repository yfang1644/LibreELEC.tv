################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="apr"
PKG_VERSION="1.5.2"

PKG_ARCH="any"
PKG_LICENSE="Apache"
PKG_MAINTAINER="dev@subversion.apache.org"
PKG_SITE="https://apr.apache.org"
PKG_URL="http://mirrors.tuna.tsinghua.edu.cn/apache/apr/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="Apache Portable Runtime library"
PKG_LONGDESC="Apache Portable Runtime library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_file__dev_zero=yes \
						  ac_cv_func_setpgrp_void=yes \
						  apr_cv_tcp_nodelay_with_cork=yes"

pre_make_target() {
  sed -i '137,138d' Makefile
  sed -i '94,98d' ../include/apr_want.h
  mkdir -p tools
  $HOST_CC ../tools/gen_test_char.c -o tools/gen_test_char
}

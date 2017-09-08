################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="apr-util"
PKG_VERSION="1.5.4"

PKG_ARCH="any"
PKG_LICENSE="Apache"
PKG_MAINTAINER="dev@subversion.apache.org"
PKG_SITE="https://apr.apache.org"
PKG_URL="http://mirrors.tuna.tsinghua.edu.cn/apache/apr/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="apr"

PKG_SECTION="gnome"
PKG_SHORTDESC="Apache Portable Runtime library Utilities"
PKG_LONGDESC="Apache Portable Runtime library Utilities"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-apr=$ROOT/$BUILD/apr-1.5.2/.$TARGET_NAME"

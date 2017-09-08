################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="subversion"
PKG_VERSION="1.8.16"

PKG_ARCH="any"
PKG_LICENSE="Apache"
PKG_MAINTAINER="dev@subversion.apache.org"
PKG_SITE="http://subversion.apache.org"
PKG_URL="http://mirrors.tuna.tsinghua.edu.cn/apache/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="apr apr-util"

PKG_SECTION="apps"
PKG_SHORTDESC="subversion version control system"
PKG_LONGDESC="subversion version control system"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-apr=$ROOT/$BUILD/apr-1.5.2/.$TARGET_NAME \
						  --with-apr-util=$ROOT/$BUILD/apr-util-1.5.4/.$TARGET_NAME \
						  --with-expat=$SYSROOT_PREFIX/usr/include:$SYSROOT_PREFIX/usr/lib:expat"

pre_configure_target() {
   # MacOS check
   sed -i '18680,18765d' ../configure
}

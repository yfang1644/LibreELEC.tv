################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="exo"
PKG_VERSION="0.11.5"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Benedikt Meurer <benny@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/src/xfce/$PKG_NAME/0.11/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="gtk+ libxfce4ui"
PKG_SECTION="xfce4"
PKG_SHORTDESC="Libexo is an extension library to Xfce"
PKG_LONGDESC="This is libexo, an extension library to Xfce, developed by os-cillation. While Xfce comes with quite a few libraries that are targeted at desktop development, libexo is targeted at application development. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_configure_target()
{
 # do not check strftime in version 0.10.3
  sed -i '14238,14438c\$as_echo "#define HAVE_MMAP 1" >> confdefs.h\n\$as_echo "#define HAVE_STRFTIME_EXTENSION 1" >>confdefs.h' ../configure
}

post_configure_target()
{
    sed -i 's/\t\$(top_builddir)\/exo-csource\/exo-csource/\t\/usr\/bin\/exo-csource/g' tests/Makefile
}

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="motif"
PKG_VERSION="2.3.4"

PKG_ARCH="any"
PKG_LICENSE=""
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="libXt libXft freetype xbitmaps motif:host"

PKG_SECTION="apps"
PKG_SHORTDESC=""
PKG_LONGDESC="."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_HOST="--host=$HOST_NAME \
						--target=$HOST_NAME \
                        --with-freetype-includes=/usr/include/freetype2"

PKG_CONFIGURE_OPTS_TARGET="--build= \
						   --target=$HOST_NAME \
                           --x-includes=$SYSROOT_PREFIX/usr/include \
						   --x-libraries=$SYSROOT_PREFIX/usr/lib \
                           ac_cv_func_setpgrp_void=yes"

LDFLAGS="-lXt -lX11 -lXext"

unpack() {
    tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz \
	  -C $ROOT/$BUILD
}

pre_build_host() {
  ( cd $PKG_BUILD
   sh autogen.sh
   make distclean
  )
}

configure_host() {
  ../configure
}

make_host() {
   make -C lib
   make -C config/util
   make -C tools/wml/ wml wmluiltok wmldbcreate
}

makeinstall_host() {
  :
}

pre_make_target() {
  touch config/util/makestrs.o
  cp ../.$HOST_NAME/config/util/makestrs config/util
  cp ../.$HOST_NAME/tools/wml/wml tools/wml
  cp ../.$HOST_NAME/tools/wml/wmluiltok tools/wml
  cp ../.$HOST_NAME/tools/wml/wmldbcreate tools/wml
}

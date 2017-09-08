################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="ghostscript"
PKG_VERSION="9.19"

PKG_ARCH="any"
PKG_LICENSE="AGPL"
PKG_MAINTAINER=""
PKG_SITE="http://www.cs.wisc.edu/~ghost/"
PKG_URL="https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs919/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="lcms2"

PKG_SECTION="apps"
PKG_SHORTDESC="an interpreter for the PostScript language and for PDF."
PKG_LONGDESC="an interpreter for the PostScript language and for PDF."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_HOST="--without-ijs --without-jbig2dec"
PKG_CONFIGURE_OPTS_TARGET="--without-x \
						  --with-system-libtiff"

make_target() {
   make -j4 CC=$TARGET_CC CCLD=$TARGET_CC CCAUX=$HOST_CC so
}


pre_configure_host() {
  export XTRALIBS="-L$ROOT/$TOOLCHAIN/lib -lpng -lexpat -lbz2 -lz"
  rm -rf ../libpng ../jpeg ../tiff
}

pre_configure_target() {
  export XTRALIBS="-L$SYSROOT_PREFIX/usr/lib -ljpeg -lpng -lexpat -lbz2 -lz"
   CFLAGS=-I$SYSROOT_PREFIX/usr/include
  rm -rf ../libpng ../jpeg ../tiff ../freetype ../lcms2
}

Xpre_make_target() {
  mkdir -p obj/aux
  cp ../.$HOST_NAME/obj/aux/mkromfs  obj/aux
  cp ../.$HOST_NAME/obj/aux/echogs   obj/aux
  cp ../.$HOST_NAME/obj/aux/genconf  obj/aux
  cp ../.$HOST_NAME/obj/aux/genarch  obj/aux
}

post_makeinstall_target() {
  PKG_DEPENDS_TARGET="libpng libjpeg-turbo tiff lcms2"
}

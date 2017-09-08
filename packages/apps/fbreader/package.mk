################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="fbreader"
PKG_VERSION="0.12.10"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="FBReader.ORG Limited"
PKG_SITE="https://fbreader.org"
PKG_URL=""
PKG_DEPENDS_TARGET="fribidi libunibreak libressl curl expat gtk2 bzip2"

PKG_SECTION="apps"
PKG_SHORTDESC="FBReader is an e-book reader."
PKG_LONGDESC="BReader is a free (and ad-free) multi-platform ebook reader.Supports popular ebook formats: ePub, fb2, mobi, rtf, html, plain text, and a lot of other formats.Provides access to popular network libraries that contain a large set of ebooks. "
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

export CFLAGS="-I$SYSROOT_PREFIX/usr/include \
               -I$SYSROOT_PREFIX/usr/include/glib-2.0 \
               -I$SYSROOT_PREFIX/usr/include/gtk-2.0 \
               -I$SYSROOT_PREFIX/usr/include/cairo \
               -I$SYSROOT_PREFIX/usr/include/pango-1.0 \
               -I$SYSROOT_PREFIX/usr/include/atk-1.0 \
               -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
               -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include \
               -I$SYSROOT_PREFIX/usr/lib/gtk-2.0/include \
               -mcpu=$TARGET_CPU -mfloat-abi=$TARGET_FLOAT -mfpu=$TARGET_FPU"

export LDFLAGS="-L$SYSROOT_PREFIX/usr/lib \
	            -L$CROSSTOOL_PATH/$TARGET_NAME/lib \
   -lrtmp -lcurl -lssl -lcrypto -lfribidi -lunibreak -lz -lbz2 -lexpat \
   -lresolv -lpthread"

unpack() {
   tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2 -C $ROOT/$BUILD
}

pre_make_target() {
    echo "TARGET_ARCH = desktop" > makefiles/target.mk
    echo "UI_TYPE = gtk" >> makefiles/target.mk

    sed -i "s:^CC =.*$:CC = $TARGET_CC:" makefiles/arch/desktop.mk
    sed -i "s:^AR =.*$:AR = $TARGET_AR rsu:" makefiles/arch/desktop.mk
    sed -i "s:^LD =.*$:LD = $TARGET_CXX:" makefiles/arch/desktop.mk
    sed -i "s:^CFLAGS =.*$::"  makefiles/arch/desktop.mk
    sed -i "s:^LDFLAGS =.*$::" makefiles/arch/desktop.mk
    sed -i "148s:false:0:" fbreader/src/database/booksdb/BooksDB.cpp
}


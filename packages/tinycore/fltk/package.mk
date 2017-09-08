################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="fltk"
PKG_VERSION="1.3.3"
PKG_ARCH="any"
PKG_LICENSE="FLTK"
PKG_MAINTAINER="Bill Spitzak (spitzak@users.sourceforge.net)"
PKG_SITE="http://www.fltk.org/index.php"
PKG_URL="http://fltk.org/pub/fltk/1.3.3/fltk-1.3.3-source.tar.gz"
PKG_DEPENDS_TARGET="libXcursor libXinerama libXext libpng libjpeg-turbo"
PKG_SECTION="tinycore"
PKG_SHORTDESC="Fast Light Toolkit"
PKG_LONGDESC="FLTK (pronounced ''fulltick') is a cross-platform C++ GUI toolkit for  X11, Microsoft Windows, and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL and its built-in GLUT emulation."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_USE_CMAKE="no"

if [ ! "$OPENGL" = "no"  ]; then
    PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET glu"
fi

PKG_CONFIGURE_OPTS_TARGET="--disable-xfixes \
                --enable-xinerama \
                --enable-xcursor \
                --disable-xft"

PKG_CMAKE_OPTS_TARGET="-DOPTION_USE_XFT=OFF \
                       -DOPTION_USE_XFIXES=OFF \
                       -DOPTION_USE_XCURSOR=ON \
                       -DOPTION_USE_XINERAMA=ON \
                       -DOPTION_USE_THREADS=ON \
                       -DOPTION_BUILD_EXAMPLES=OFF \
                       -DOPTION_BUILD_SHARED_LIBS=ON \
                       -Wno-dev"

pre_configure_target() {
  cd ..
}
pre_make_target() {
  sed -i '84s/$/ \$(LDFLAGS)/; 85s/$/ \$(LDFLAGS)/' makeinclude
  sed -i '21s/fluid.*$//' Makefile
#  sed -i '139s/fl_font.cxx/fl_font_x.cxx/' src/Makefile
}


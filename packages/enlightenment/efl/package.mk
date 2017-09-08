################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="efl"
PKG_VERSION="1.20.3"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="Rasterman (Carsten Haitzler) <raster@rasterman.com>"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/libs/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="bullet3 gst-plugins-good \
                    libXinerama libXrandr libinput libxkbcommon \
                    poppler librsvg \
                    libjpeg-turbo LuaJIT giflib pulseaudio fribidi tiff \
                    libXcomposite libXcursor libXdamage libXtst libXScrnSaver"
PKG_SECTION="Enlightenment"
PKG_SHORTDESC="Enlightenment Foundamental Libraries"
PKG_LONGDESC="EFL is a collection of libraries for handling many common tasks a developer may have such as data structures, communication, rendering, widgets and more." 

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-doc \
                --disable-neon \
                --disable-sdl \
                --disable-cocoa \
                --enable-poppler \
                --disable-spectre \
                --disable-libraw \
                --disable-tslib \
                --disable-libvlc \
                --enable-systemd \
                --enable-elput \
                --enable-physics \
                --enable-pulseaudio \
                --enable-gstreamer1 \
                --with-profile=release \
                --enable-drm \ 
                --enable-egl \ 
                --with-opengl=es \ 
                --with-x11=xlib \
                --with-eet-eet=/usr/local/bin/eet \
                --with-edje-cc=/usr/local/bin/edje_cc \
                --with-eolian-gen=/usr/local/bin/eolian_gen \
                --with-eolian-cxx=/usr/local/bin/eolian_cxx \
                --with-elua=/usr/local/bin/elua \
                --with-elm-prefs-cc=/usr/local/bin/elm_prefs_cc \
                --with-elementary-codegen=/usr/local/bin/elementary_codegen \
                --enable-i-really-know-what-i-am-doing-and-that-this-will-probably-break-things-and-i-will-fix-them-myself-and-send-patches-abb"

pre_configure_target() {
#  sed -i '59805,59810d; 59720,59798d' ../configure
  sed -i 's/GLES3\/gl3/GLES2\/gl2/g' ../src/modules/evas/engines/gl_common/evas_gl_common.h
}

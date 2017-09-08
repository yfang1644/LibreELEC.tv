################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="fvwm"
PKG_VERSION="2.6.6"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Thomas Adam <thomas@fvwm.org>"
PKG_SITE="http://fvwm.org"
PKG_URL="https://github.com/fvwmorg/fvwm/releases/download/version-2_6_6/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libXt glib libstroke rplay librsvg"

PKG_SECTION="apps"
PKG_SHORTDESC="Fvwm, a virtual desktop window manager"
PKG_LONGDESC="Fvwm is a multiple large virtual desktop window manager, originally (a looooong time ago!) derived from twm."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--without-gnome \
						  ac_cv_func_setpgrp_void=no \
						  ac_cv_func_mkstemp=no \
						  --with-x \
						  --disable-freetypetest \
						  --disable-fontconfigtest \
						  --disable-xfttest \
						  --disable-imlibtest \
						  --disable-bidi \
						  --disable-gtk \
						  --disable-mandoc \
						  --disable-htmldoc"

pre_configure_target() {
  sed -i '13999,14028d' ../configure
  sed -i '14009,14039d' ../configure
}

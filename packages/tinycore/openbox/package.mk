################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="openbox"
PKG_VERSION="3.6.1"

PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_MAINTAINER="Mikael Magnusson (mikachu@icculus.org)"
PKG_SITE="http://openbox.org/"
PKG_URL="http://openbox.org/dist/openbox/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="librsvg atk gdk-pixbuf pango startup-notification"

PKG_SECTION="tinycore"
PKG_SHORTDESC="OpenBox windowmanager"
PKG_LONGDESC="OpenBox windowmanager"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

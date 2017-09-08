################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="totem-pl-parser"
PKG_VERSION="3.10.1"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Bastien Nocera<hadess@hadess.net>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib gmime libsoup"

PKG_SECTION="gnome"
PKG_SHORTDESC="A simple GObject-based library to parse a host of playlist formats, as well as save those"
PKG_LONGDESC="totem-pl-parser is a simple GObject-based library to parse a host of playlist formats, as well as save those"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

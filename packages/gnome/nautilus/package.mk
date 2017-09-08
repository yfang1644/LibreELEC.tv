################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="nautilus"
PKG_VERSION="3.10.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Cosimo Cecchi <cosimoc@gnome.org>"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="cairo at-spi2-atk exempi libnotify libexif"

PKG_SECTION="gnome"
PKG_SHORTDESC=""
PKG_LONGDESC="."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="CC=$TARGET_CC \
						  --disable-tracker \
						  --disable-introspection"

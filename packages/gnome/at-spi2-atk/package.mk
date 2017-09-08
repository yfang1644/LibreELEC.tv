################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="at-spi2-atk"
PKG_VERSION="2.8.0"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Mike Gorse <mgorse@suse.com>, etl al"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.8/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="at-spi2-core atk"
PKG_SECTION="gnome"
PKG_SHORTDESC="AT-SPI and Accessibility"
PKG_LONGDESC="This package includes libatk-bridge, a library that bridges ATK to the new D-Bus based AT-SPI, as well as a corresponding module for gtk+ 2.x. Gtk+ 3.x now links against libatk-bridge directly rather than requiring it to be loaded as a module. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

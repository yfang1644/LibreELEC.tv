################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gnome-doc-utils"
PKG_VERSION="0.13.1"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Shaun McCance <shaunm@gnome.org>"
PKG_SITE="https://wiki.gnome.org/Apps/Evince"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.13/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="A collection of documentation utilities for the Gnome project."
PKG_LONGDESC="A collection of documentation utilities for the Gnome project."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-build-utils --disable-nls"

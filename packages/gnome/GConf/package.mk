################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="GConf"
PKG_VERSION="3.2.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Havoc Pennington <hp@redhat.com>"
PKG_SITE="https://projects.gnome.org/gconf"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.2/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="ORBit2"

PKG_SECTION="gnome"
PKG_SHORTDESC="GConf is a system for storing application preferences."
PKG_LONGDESC="GConf is a system for storing application preferences."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="clutter-gtk"
PKG_VERSION="1.6.2"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Emmanuele Bassi <ebassi@gnome.org>"
PKG_SITE="https://blogs.gnome.org/clutter"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/1.6/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="clutter gtk3"

PKG_SECTION="gnome"
PKG_SHORTDESC="Clutter-GTK is a library providing facilities to integrate Clutter into GTK+ applications and vice versa."
PKG_LONGDESC="Clutter-GTK is a library providing facilities to integrate Clutter into GTK+ applications and vice versa."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

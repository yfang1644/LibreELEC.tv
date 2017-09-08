################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="totem"
PKG_VERSION="3.15.4"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Bastien Nocera<hadess@hadess.net>, Julien Moutte<julien@moutte.net>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.15/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="clutter-gtk clutter-gst gsettings-desktop-schemas \
                totem-pl-parser libpeas pygobject"

PKG_SECTION="gnome"
PKG_SHORTDESC="Totem is a media player in GNOME"
PKG_LONGDESC="Totem is a media player in GNOME."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

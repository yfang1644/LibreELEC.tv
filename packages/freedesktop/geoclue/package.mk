################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="geoclue"
PKG_VERSION="2.2.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="geoclue@lists.freedesktop.org"
PKG_SITE="https://www.freedesktop.org/wiki/Software/GeoClue"
PKG_URL="https://www.freedesktop.org/software/$PKG_NAME/releases/2.2/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="json-glib libsoup"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="Geoclue is a D-Bus service that provides location information."
PKG_LONGDESC="Geoclue is a D-Bus service that provides location information. The primary goal of the Geoclue project is to make creating location-aware applications as simple as possible, while the secondary goal is to ensure that no application can access location information without explicit permission from user." 

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

#don't use ModemManager
PKG_CONFIGURE_OPTS_TARGET="--disable-3g-source \
						   --disable-cdma-source \
						   --disable-modem-gps-source"

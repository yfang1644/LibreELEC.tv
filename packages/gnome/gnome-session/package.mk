################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gnome-session"
PKG_VERSION="3.10.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Tom Tromey <tromey@cygnus.com>"
PKG_SITE="https://wiki.gnome.org"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib dbus-glib upower gnome-desktop"

PKG_SECTION="gnome"
PKG_SHORTDESC="gnome-session contains the GNOME session manager, as well as a configuration program to choose applications starting on login. "
PKG_LONGDESC="gnome-session contains the GNOME session manager, as well as a configuration program to choose applications starting on login. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-session-selector \
						--enable-gconf \
						--disable-docbook-docs \
						--disable-man \
						--disable-nls \
						--disable-schemas-compile \
						--enable-ipv6"

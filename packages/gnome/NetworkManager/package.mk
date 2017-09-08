################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="NetworkManager"
PKG_VERSION="1.2.4"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER=""
PKG_SITE="https://wiki.gnome.org/Projects/NetworkManager/libnm"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/1.2/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libgudev libndp"

PKG_SECTION="gnome"
PKG_SHORTDESC="libnm is the new API for NetworkManager 1.0, replacing libnm-util and libnm-glib (which will still be available, but deprecated)."
PKG_LONGDESC="."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-ifupdown \
						   --disable-ifcfg-rh \
						   --disable-ifnet \
						   --disable-ifcfg-suse \
						   --with-crypto=gnutls \
						   --with-netconfig=yes \
 						   --with-config-dns-rc-manager-default=netconfig \
						   --without-libsoup \
						   --without-nmcli  \
						   --without-nmtui"

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="ModemManager"
PKG_VERSION="1.2.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="modemmanager-devel@lists.freedesktop.org"
PKG_SITE="https://www.freedesktop.org/wiki/Software/ModemManager/"
PKG_URL="https://www.freedesktop.org/software/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="freedesktop"
PKG_SHORTDESC="ModemManager is a DBus-activated daemon which controls mobile broadband (2G/3G/4G) devices and connections. "
PKG_LONGDESC="ModemManager is a DBus-activated daemon which controls mobile broadband (2G/3G/4G) devices and connections. Whether built-in devices, USB dongles, bluetooth-paired telephones, or professional RS232/USB devices with external power supplies, ModemManager is able to prepare and configure the modems and setup connections with them."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--without-mbim --without-qmi"

pre_make_target()
{
  sed -i 's/-Werror//g' `find . -name Makefile`
}

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="upstart"
PKG_VERSION="1.13.1"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Scott James Remnant"
PKG_SITE="http://upstart.ubuntu.com"
PKG_URL="http://upstart.ubuntu.com/download/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libnih dbus"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="Upstart is an event-based replacement for the sysvinit daemon"
PKG_LONGDESC="Upstart is an event-based replacement for the /sbin/init daemon which handles starting of tasks and services during boot, stopping them during shutdown and supervising them while the system is running."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

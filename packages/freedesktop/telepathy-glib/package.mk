################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="telepathy-glib"
PKG_VERSION="0.23.1"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Simon McVittie <simon.mcvittie@collabora.co.uk>"
PKG_SITE="https://telepathy.freedesktop.org/"
PKG_URL="https://telepathy.freedesktop.org/releases/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="freedesktop"
PKG_SHORTDESC="This is a library for GLib-based Telepathy components."
PKG_LONGDESC="Telepathy provides a powerful framework for interacting with the user's instant messaging contacts. With Telepathy, all accounts and connections are handled by a D-Bus session service that's deeply integrated into the GNOME desktop. Applications can tie into this service to communicate with contacts."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

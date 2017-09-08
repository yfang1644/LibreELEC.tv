################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="accountsservice"
PKG_VERSION="0.6.35"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Matthias Clasen <mclasen@redhat.com>"
PKG_SITE="https://www.freedesktop.org/wiki/Software/accountsservice/"
PKG_URL="https://www.freedesktop.org/software/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="polkit"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="Accounts Service"
PKG_LONGDESC="The AccountsService project provides a set of D-Bus interfaces for querying and manipulating user account information and an implementation of these interfaces based on the usermod useradd and userdel commands. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
						  --disable-gtk-doc-pdf \
						  --disable-systemd \
						  --enable-admin-group=sudo"

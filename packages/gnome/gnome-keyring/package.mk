################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gnome-keyring"
PKG_VERSION="3.10.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Alexander Larsson <alexl@redhat.com>"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gcr"

PKG_SECTION="gnome"
PKG_SHORTDESC="gnome-keyring is a program that keep password and other secrets for users. It is run as a damon in the session, similar to ssh-agent, and other applications locate it via an environment variable or a dbus. "
PKG_LONGDESC="gnome-keyring is a program that keep password and other secrets for users. It is run as a damon in the session, similar to ssh-agent, and other applications locate it via an environment variable or a dbus. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_file__dev_random=/dev/random \
						  --disable-p11-tests \
						  --disable-debug \
						  --disable-gpg-agent \
						  --disable-ssh-agent \
						  --without-libcap-ng"

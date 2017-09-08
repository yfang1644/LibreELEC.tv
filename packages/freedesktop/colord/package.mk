################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="colord"
PKG_VERSION="1.1.5"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Richard Hughes <richard@hughsie.com>"
PKG_SITE="https://www.freedesktop.org/software/colord/download.html"
PKG_URL="https://www.freedesktop.org/software/colord/releases/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="lcms2 libgudev sqlite"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="Color Daemon"
PKG_LONGDESC="colord is a system service that makes it easy to manage, install and generate color profiles to accurately color manage input and output devices."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-gtk-doc \
                           --disable-introspection \
                           --disable-schemas-compile \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-strict   \
                           --disable-gusb   \
                           --disable-bash-completion \
                           --disable-polkit \
                           --disable-libcolordcompat \
                           --disable-systemd-login \
                           --disable-examples    \
                           --disable-reverse    \
                           --disable-sane      \
                           --disable-vala     \
                           --disable-session-example \
                           --disable-print-profiles \
                           --disable-installed-tests"

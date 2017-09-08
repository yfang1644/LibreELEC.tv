################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="cheese"
PKG_VERSION="3.10.2"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="daniel g. siegel <dgsiegel@gnome.org>, et al"
PKG_SITE="https://wiki.gnome.org/Apps/Cheese"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libgudev gnome-desktop gst-plugins-bad clutter-gst clutter-gtk gnome-video-effects"

PKG_SECTION="gnome"
PKG_SHORTDESC="gnome cheese"
PKG_LONGDESC="gnome cheese video capture"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

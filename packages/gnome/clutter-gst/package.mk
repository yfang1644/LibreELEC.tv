################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="clutter-gst"
PKG_VERSION="3.0.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Emmanuele Bassi <ebassi@gnome.org>"
PKG_SITE="https://blogs.gnome.org/clutter"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/3.0/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="clutter gstreamer"

PKG_SECTION="gnome"
PKG_SHORTDESC="Clutter-Gst is an integration library for using GStreamer with Clutter."
PKG_LONGDESC="Clutter-Gst is an integration library for using GStreamer with Clutter. It provides a GStreamer sink to upload frames to GL and an actor that implements the ClutterMedia interface using playbin2."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

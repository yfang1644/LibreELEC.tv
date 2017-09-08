################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="json-glib"
PKG_VERSION="1.0.4"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Emmanuele Bassi  <ebassi@linux.intel.com>"
PKG_SITE="https://www.gnome.org"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/1.0/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib"

PKG_SECTION="gnome"
PKG_SHORTDESC="Java Object Notation"
PKG_LONGDESC="JSON-GLib provides wrappers around the complex data types defined by the JSON specification. The fundamental types are handled using the Generic Value container (GValue) provided by GLib. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

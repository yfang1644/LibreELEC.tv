################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="cogl"
PKG_VERSION="1.20.0"

PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_MAINTAINER="Robert Bragg <robert@linux.intel.com>"
PKG_SITE="https://www.gnome.org"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/1.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gdk-pixbuf pango gstreamer mesa libXrandr libXcomposite"

PKG_SECTION="gnome"
PKG_SHORTDESC="An object oriented GL/GLES Abstraction/Utility Layer"
PKG_LONGDESC="An object oriented GL/GLES Abstraction/Utility Layer"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

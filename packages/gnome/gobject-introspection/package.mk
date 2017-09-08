################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gobject-introspection"
PKG_VERSION="1.44.0"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Colin Walters <walters@verbum.org>,Johan Dahlin <johan@gnome.org>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/1.44/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="Python glib gobject-introspection:host"

PKG_SECTION="gtk"
PKG_SHORTDESC="The goal of the project is to describe the APIs and collect them in a uniform, machine readable format."
PKG_LONGDESC="The goal of the project is to describe the APIs and collect them in a uniform, machine readable format."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_HOST="PYTHON=/usr/bin/python \
               --without-cairo"
PKG_CONFIGURE_OPTS_TARGET="PYTHON=$ROOT/$TOOLCHAIN/bin/python \
               --without-cairo"

pre_make_target() {
  sed -i "s/\$(top_builddir)\/g-ir-scanner/g-ir-scanner/;
          s/\$(top_builddir)\/g-ir-compiler/g-ir-compiler/;
          s/\$(top_builddir)\/g-ir-doc-tool/g-ir-doc-tool/" Makefile
}

post_makeinstall_target() {
  PKG_DEPENDS_TARGET="Python glib"
}

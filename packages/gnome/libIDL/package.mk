################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libIDL"
PKG_VERSION="0.8.13"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Michael Meeks<michael@ximian.com>, Mark McLoughlin<mark@skynet.ie>"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.8/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="CORBA Interface Definition Language (IDL)"
PKG_LONGDESC="With libIDL, you can parse an IDL file which will be automatically run through the C preprocessor (on systems with one available), and have detailed error and warning messages displayed."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="libIDL_cv_long_long_format=ll"

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="djvulibre"
PKG_VERSION="3.5.27"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Leon Bottou and Yann Le Cun"
PKG_SITE="https://djvulibre.djvuzone.org/"
#PKG_URL="https://git.gnome.org/browse/evince/tree/backend/djvu"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="Image Convertion library"
PKG_LONGDESC="DjVu can be seen as superior alternative to PDF and Postscript for digital documents, to TIFF (and PDF) for scanned documents, to JPEG for photographs and pictures, and to GIF for large palettized images."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

unpack() {
   tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz -C $BUILD
}

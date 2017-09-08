################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gnome-vfs"
PKG_VERSION="2.24.4"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Alexander Larsson,E-Mail: alexl redhat com"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.24/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="GConf libbonobo gnome-mime-data"

PKG_SECTION="gnome"
PKG_SHORTDESC="GNOME Virtual File System."
PKG_LONGDESC="GNOME VFS is currently used as one of the foundations of the Nautilus file manager."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_make_target() {
  sed -i 's/-DG_DISABLE_DEPRECATED//g' libgnomevfs/Makefile
  sed -i 's/-DG_DISABLE_DEPRECATED//g' daemon/Makefile
}


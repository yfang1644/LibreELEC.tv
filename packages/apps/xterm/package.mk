################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xterm"
PKG_VERSION="328"
PKG_REV=""
PKG_ARCH="any"
PKG_LICENSE="Thomas E. Dickey"
PKG_SITE="http://invisible-island.net/xterm"
PKG_URL="http://invisible-island.net/datafiles/release/$PKG_NAME.tar.gz"
PKG_DEPENDS_TARGET="libXaw3d netbsd-curses"
PKG_SECTION="apps"
PKG_SHORTDESC="X-Window Terminal"
PKG_LONGDESC="X-Window Terminal"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-Xaw3d --without-xpm"

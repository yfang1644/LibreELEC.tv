################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gv"
PKG_VERSION="3.7.4"

PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Markus Steinborn <gnugv_maintainer@yahoo.de>"
PKG_SITE="http://www.gnu.org/software/gv/"
PKG_URL="http://mirrors.ustc.edu.cn/gnu/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libXaw3d libXinerama libXmu"

PKG_SECTION="apps"
PKG_SHORTDESC="ghostscript Viewer"
PKG_LONGDESC="X11 ghostscript frontend based on Tim Theisen's ghostview 1.5."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

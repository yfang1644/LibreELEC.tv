################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="rdesktop"
PKG_VERSION="1.8.3"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Henrik Andersson <hean01@users.sourceforge.net>, et al"
PKG_SITE="http://www.rdesktop.org"
PKG_URL="https://github.com/rdesktop/rdesktop/releases/download/v1.8.3/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libX11 libXrandr libgssglue pcsc-lite libsamplerate alsa-lib libressl"

PKG_SECTION="apps"
PKG_SHORTDESC="A client for Remote Desktop Protocol (RDP)."
PKG_LONGDESC="Rdesktop is a client for Remote Desktop Protocol (RDP), used in a number of Microsoft products including Windows NT Terminal Server, Windows 2000 Server, Windows XP and Windows 2003 Server. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_type_socklen_t=yes \
                           ac_cv_func_dirfd=yes \
                           socklen_t_cv_equiv=int \
                           --with-sound=alsa"

pre_configure_target () {
   cd ..
}

post_configure_target() {
  sed -i 's/-I\/usr\/include//g' Makefile
  sed -i 's/extern char g_keymapname\[16\]/extern char g_keymapname\[PATH_MAX\]/g' xkeymap.c
}

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="enlightenment"
PKG_VERSION="0.21.9"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="The Rasterman (Carsten Haitzler) <raster@rasterman.com>, et al"
PKG_SITE="http://www.enlightenment.org"
PKG_URL="https://download.enlightenment.org/rel/apps/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
#PKG_DEPENDS_TARGET="elementary emotion_generic_players evas_generic_loaders xcb-util-keysyms"
PKG_DEPENDS_TARGET="efl xcb-util-keysyms Linux-PAM"
# efl 1.18 merges Elementary, Evas Generic Loaders and Emotion Generic Players
PKG_SECTION="Enlightenment"
PKG_SHORTDESC="Enlightenment Desktop Environment"
PKG_LONGDESC="Enlightenment Desktop Environment"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-edje-cc=/usr/local/bin/edje_cc \
						   --with-eet-eet=/usr/local/bin/eet \
						   --enable-pam \
						   --enable-systemd"

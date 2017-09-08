################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="at-spi2-core"
PKG_VERSION="2.12.0"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Mike Gorse <mgorse@novell.com>, et al"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.12/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="dbus libICE libXtst"
PKG_SECTION="gnome"
PKG_SHORTDESC="AT SPI CORE"
PKG_LONGDESC="This package includes the protocol definitions for the new D-Bus
at-spi. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_alignof_char=1 \
			   ac_cv_alignof_dbus_bool_t=4 \
			   ac_cv_alignof_dbus_int16_t=2 \
			   ac_cv_alignof_dbus_int32_t=4 \
			   ac_cv_alignof_dbus_int64_t=8 \
			   ac_cv_alignof_double=8 \
			   ac_cv_alignof_dbind_pointer=8 \
			   ac_cv_alignof_dbind_struct=1 \
			   --without-x"


################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="ORBit2"
PKG_VERSION="2.14.19"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Michael Meeks <michael@ximian.com>"
PKG_SITE="https://projects.gnome.org/ORBit2/"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.14/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libIDL"

PKG_SECTION="gnome"
PKG_SHORTDESC="ORBit2 is a CORBA 2.4-compliant Object Request Broker (ORB) featuring mature C, C++ and Python bindings. "
PKG_LONGDESC="ORBit2 is a CORBA 2.4-compliant Object Request Broker (ORB) featuring mature C, C++ and Python bindings. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_c_bigendian=no \
						  ac_cv_alignof_CORBA_octet=1 \
						  ac_cv_alignof_CORBA_boolean=1 \
						  ac_cv_alignof_CORBA_char=1 \
						  ac_cv_alignof_CORBA_wchar=2 \
						  ac_cv_alignof_CORBA_short=2 \
						  ac_cv_alignof_CORBA_long=4 \
						  ac_cv_alignof_CORBA_long_long=8 \
						  ac_cv_alignof_CORBA_float=4 \
						  ac_cv_alignof_CORBA_double=8 \
						  ac_cv_alignof_CORBA_long_double=8 \
						  ac_cv_alignof_CORBA_struct=1 \
						  ac_cv_alignof_CORBA_pointer=4 \
                          --with-idl-compiler=/usr/bin/orbit-idl-2"

pre_make_target() {
  sed -i 's/-DG_DISABLE_DEPRECATED//g' linc2/src/Makefile
}

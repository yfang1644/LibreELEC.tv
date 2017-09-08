################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="dpkg"
PKG_VERSION="1.18.3"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Guillem Jover <guillem@debian.org>"
PKG_DEPENDS_TARGET="netbsd-curses zlib bzip2"
PKG_SECTION="graphics"
PKG_SHORTDESC="Debian's package maintenance system"
PKG_LONGDESC="Debian's package maintenance system"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-start-stop-daemon \
						  --disable-update-alternatives \
						  ac_cv_lib_curses_initscr=yes \ 
						  --disable-shared \
						  LIBS=-lterminfo"

unpack() {
   tar xf $ROOT/$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2 -C $BUILD
}

pre_make_target() {
  sed -i '/--warning=no-timestamp/d' ../dpkg-deb/extract.c
}

post_makeinstall_target() {
  mkdir -p $INSTALL/var/lib/dpkg/info
  mkdir -p $INSTALL/var/lib/dpkg/updates
  touch $INSTALL/var/lib/dpkg/status 
  echo "arm >" $INSTALL/var/lib/dpkg/arch
}

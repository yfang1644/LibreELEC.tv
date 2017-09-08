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

PKG_NAME="crossguid"
PKG_VERSION="8f399e8"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_MAINTAINTER="Graeme Hill (http://graemehill.ca)"
PKG_SITE="https://github.com/graeme-hill/crossguid"
PKG_URL="https://github.com/graeme-hill/crossguid/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="util-linux"         # need UUID
PKG_SECTION="devel"
PKG_SHORTDESC="minimal, cross platform, C++ GUID library"
PKG_LONGDESC="minimal, cross platform, C++ GUID library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  $CXX -c guid.cpp -o guid.o $CXXFLAGS -std=c++11 -DGUID_LIBUUID -I$SYSROOT_PREFIX/usr/include
  $AR rvs libcrossguid.a guid.o
}

makeinstall_target() {
  mkdir -p $SYSROOT_PREFIX/usr/lib/
  cp libcrossguid.a $SYSROOT_PREFIX/usr/lib/
  mkdir -p $SYSROOT_PREFIX/usr/include/
  cp guid.h $SYSROOT_PREFIX/usr/include
}

make_package_target() {
  :
}

################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="file"
PKG_VERSION="70c5f15"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_MAINTAINER="Christos Zoulas (christos@astron.com)"
PKG_SITE="http://www.darwinsys.com/file/"
PKG_URL="https://github.com/file/file/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST=""
PKG_DEPENDS_TARGET="zlib file:host"
PKG_SECTION="tools"
PKG_SHORTDESC="File type identification utility"
PKG_LONGDESC="These are the sources to Darwin's file(1) utility and master magic(4) file, now maintained by Christos Zoulas. The file(1) utility is used to determine the types of various files."
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_HOST="--enable-fsect-man5 --enable-static --disable-shared"
PKG_CONFIGURE_OPTS_TARGET="--enable-fsect-man5 --enable-static --disable-shared"

post_makeinstall_target() {
  PKG_DEPENDS_TARGET="zlib"
}

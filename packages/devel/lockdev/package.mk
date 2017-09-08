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

PKG_NAME="lockdev"
PKG_VERSION="16b8996"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Gergely Nagy <algernon@debian.org>"
PKG_SITE="https://alioth.debian.org/scm/?group_id=100443"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""
PKG_SECTION="system"
PKG_SHORTDESC="Manage character and block device lockfiles."
PKG_LONGDESC="Manage character and block device lockfiles."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_configure_target() {
  (
    CFLAGS="$CFLAGS -fPIC -DPIC"
	./bootstrap
  )
}

post_makeinstall_target() {
  PKG_VERSION="1.0.4"
}

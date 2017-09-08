################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libxklavier"
PKG_VERSION="5.0"

PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Sergey V. Udaltsov (svu@users.sourceforge.net)"
PKG_SITE="https://www.freedesktop.org/wiki/Software/LibXklavier"
PKG_URL="https://sourceforge.net/projects/gswitchit/files/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="iso-codes"

PKG_SECTION="freedesktop"
PKG_SHORTDESC="High-level API for X Keyboard Extension."
PKG_LONGDESC="libxklavier is a library providing high-level API for X Keyboard Extension known as XKB. This library is indended to support XFree86 and other commercial X servers. It is useful for creating XKB-related software (layout indicators etc)."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

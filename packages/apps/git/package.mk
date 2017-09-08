################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="git"
PKG_VERSION="6598894"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="git"
PKG_SITE="https://git-scm.com"
PKG_GIT_URL="https://github.com/git/git.git"
PKG_GIT_BRANCH="master"
PKG_DEPENDS_TARGET="curl expat libressl zlib"

PKG_SECTION="apps"
PKG_SHORTDESC="A distributed subversion version control system"
PKG_LONGDESC="Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  sed -i 's/^CC = cc/CC = arm-linux-gcc/' Makefile
  sed -i 's/CFLAGS = -g -O2 -Wall//' Makefile
  sed -i 's/^LDFLAGS =//' Makefile
}

make_target() {
   make prefix=/usr
}
makeinstall_target(){
   make prefix=/usr install DESTDIR=$INSTALL
}

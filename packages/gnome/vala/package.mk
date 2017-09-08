################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="vala"
PKG_VERSION="0.22.1"

PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Jürg Billeter <j@bitron.ch>, Raffaele Sandrini <raffaele@sandrini.ch>"
PKG_SITE="https://wiki.gnome.org/Projects/Vala"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/0.22/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="gnome"
PKG_SHORTDESC="Compiler for the GObject type system"
PKG_LONGDESC="Vala is a programming language that aims to bring modern programming language features to GNOME developers without imposing any additional runtime requirements and without using a different ABI compared to applications and libraries written in C. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

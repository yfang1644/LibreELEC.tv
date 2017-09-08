################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="mpich"
PKG_VERSION="3.2"

PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_MAINTAINER="Argonne National Laboratory"
PKG_SITE="http://www.mpich.org"
PKG_URL="http://www.mpich.org/static/downloads/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""

PKG_SECTION="apps"
PKG_SHORTDESC="MPICH, formerly known as MPICH2, is a freely available, portable implementation of MPI, a standard for message-passing for distributed-memory applications used in parallel computing"
PKG_LONGDESC="MPICH, formerly known as MPICH2, is a freely available, portable implementation of MPI, a standard for message-passing for distributed-memory applications used in parallel computing"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-fortran"

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="bullet3"
PKG_VERSION="2.82"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Erwin Coumans (http://bulletphysics.org)"
PKG_SITE="http://bulletphysics.org/wordpress/"
PKG_URL="https://github.com/bulletphysics/$PKG_NAME/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""
PKG_SOURCE_DIR=$PKG_NAME-$PKG_VERSION
PKG_SECTION="enlightenment"
PKG_SHORTDESC="Bullet is a 3D Collision Detection and Rigid Body Dynamics Library for games and animation."
PKG_LONGDESC="Bullet is a 3D Collision Detection and Rigid Body Dynamics Library for games and animation. Free for commercial use, including Playstation 3, open source under the ZLib License."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

#PKG_CONFIGURE_OPTS_TARGET="ac_cv_bigendian=no"
PKG_CMAKE_OPTS_TARGET="-DBUILD_STATIC_LIBS=OFF \
                       -DBUILD_SHARED_LIBS=ON"

pre_build_target() {
  (
    cd $PKG_BUILD
	sh autogen.sh
    sed -i '/Unknown Architecture/d' configure # dont't check Architecture
  )
}

pre_configure_target() {
  cp ../* . -ar
}

post_makeinstall_target() {
  cp ../src/BulletSoftBody/btDefaultSoftBodySolver.h $SYSROOT_PREFIX/usr/include/bullet/BulletSoftBody
  cp ../src/BulletSoftBody/btSoftBodySolvers.h $SYSROOT_PREFIX/usr/include/bullet/BulletSoftBody
  cp ../src/BulletSoftBody/btSoftBodySolverVertexBuffer.h $SYSROOT_PREFIX/usr/include/bullet/BulletSoftBody

  cp ../src/BulletDynamics/ConstraintSolver/btFixedConstraint.h $SYSROOT_PREFIX/usr/include/bullet/BulletDynamics/ConstraintSolver
}

################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="vim"
PKG_VERSION="7.4"

PKG_ARCH="any"
PKG_LICENSE=""
PKG_MAINTAINER="Bram Moolenaar <Bram@vim.org>"
PKG_SITE="http://www.vim.org"
PKG_URL="http://ftp.vim.org/pub/vim/unix/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="netbsd-curses"

PKG_SECTION="apps"
PKG_SHORTDESC="Vi IMproved"
PKG_LONGDESC="Vim is an almost compatible version of the UNIX editor Vi."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_small_wchar_t=2 \
                vim_cv_toupper_broken=yes \
                vim_cv_terminfo=yes \
                vim_cv_tty_group=world \
                vim_cv_getcwd_broken=yes \
                vim_cv_stat_ignores_slash=yes \
                vim_cv_memmove_handles_overlap=yes \
                vim_cv_bcopy_handles_overlap=yes \
                --enable-gui=no \
                --with-tlib=termcap"

pre_configure_target() {
  cd $PKG_BUILD
}

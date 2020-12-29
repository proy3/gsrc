# Copyright © 2013, 2014 Brandon Invergo <brandon@invergo.net>
#
# This file is part of GSRC.
#
# GSRC is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# GSRC is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
# License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GSRC.  If not, see <http://www.gnu.org/licenses/>.

NAME = Ncurses
GARNAME = ncurses
GARVERSION = 5.9
HOME_URL = http://www.gnu.org/software/ncurses/
DESCRIPTION = Terminal emulation (termcap, terminfo) library
define BLURB
GNU Ncurses is a library which provides capabilities to write text to a
terminal in a terminal-independent manner.  It supports pads and
color as well as multiple highlights and forms characters.  It is
typically used to implement user interfaces for command-line
applications.  The accompanying ncursesw library provides wide character
support.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
CONFIGURE_SCRIPTS = ncursesw ncurses
BUILD_SCRIPTS = $(WORKDIR)/ncursesw-build/Makefile $(WORKDIR)/ncurses-build/Makefile
INSTALL_SCRIPTS = $(WORKDIR)/ncursesw-build/Makefile ncursesw ncurses


BUILDDEPS = libtool
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-shared --with-normal --without-debug
ifeq ($(GARARCH),x86_64)
	ARCH_ARG = --with-chtype=long
else
	ARCH_ARG =
endif

pre-configure:
	mkdir -p $(packageprefix)/lib/pkgconfig
	$(MAKECOOKIE)

configure-ncurses: 
	@printf "[$(OK)configure$(OFF)] $(MSG)Running $(CONFIGURE_NAME) in $(OFF)$*\n"
	mkdir $(WORKDIR)/ncurses-build
	cd $(WORKDIR)/ncurses-build && $(CONFIGURE_ENV) ../$(DISTNAME)/configure $(CONFIGURE_ARGS) $(ARCH_ARG) $(OUTPUT)
	$(MAKECOOKIE)

configure-ncursesw:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running $(CONFIGURE_NAME) in $(OFF)$*\n"
	mkdir $(WORKDIR)/ncursesw-build
	cd $(WORKDIR)/ncursesw-build && $(CONFIGURE_ENV) ../$(DISTNAME)/configure \
		$(CONFIGURE_ARGS) --enable-widec --enable-pc-files --with-pkg-config=$(packageprefix)/lib/pkgconfig $(OUTPUT)
	$(MAKECOOKIE)

install-ncurses:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing ncurses libraries $(OFF)\n"
	for lib in ncurses form panel menu; do \
		$(INSTALL_LIB) $(WORKDIR)/ncurses-build/lib/lib$${lib}.so.$(GARVERSION); \
		ln -s $(prefix)/lib/lib$${lib}.so.$(GARVERSION) $(packageprefix)/lib/lib$${lib}.so.5; \
	done
	$(MAKECOOKIE)

install-ncursesw:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing ncursesw libraries $(OFF)\n"
	for lib in ncurses form panel menu; do \
		echo "INPUT(-l$${lib}w)" >$(packageprefix)/lib/lib$${lib}.so; \
	done
	for lib in ncurses ncurses++ form panel menu; do \
		ln -s $(prefix)/lib/pkgconfig/$${lib}w.pc $(packageprefix)/lib/pkgconfig/$${lib}.pc; \
	done
	echo "INPUT(-lncursesw)" >$(packageprefix)/lib/libcursesw.so
	ln -s $(prefix)/lib/libncurses.so $(packageprefix)/lib/libcurses.so
	$(MAKECOOKIE)

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

NAME = The GNU Compiler Collection
GARNAME = gcc
GARVERSION = 4.9.1
HOME_URL = http://www.gnu.org/software/gcc
DESCRIPTION = GNU Compiler Collection
define BLURB
GCC is the GNU Compiler Collection.  It provides compiler front-ends
for several languages, including C, C++, Objective-C, Fortran, Java,
Ada, and Go.  It also includes runtime support libraries for these
languages.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/$(DISTNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
WORKOBJ = $(WORKDIR)/build
INSTALL_SCRIPTS = $(WORKOBJ)/Makefile links
INFO_FILES = cpp.info cppinternals.info gcc.info gccinstall.info \
	gccint.info gfortran.info libgomp.info libitm.info \
	libquadmath.info

BUILDDEPS = gmp mpfr mpc
LIBDEPS = zlib

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += \
		 --with-local-prefix=$(prefix) \
		 --with-mpfr=$(prefix) \
		 --with-gmp=$(prefix) \
		 --with-mpc=$(prefix) \
		 --with-system-zlib

CPPFLAGS += -I$(prefix)/include

install-links:
	@ln -sf gcc $(packageprefix)/bin/cc
	@ln -sf ../bin/cpp $(packageprefix)/lib/cpp
	$(MAKECOOKIE)

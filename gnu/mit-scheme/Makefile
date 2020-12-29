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

NAME = MIT/GNU Scheme
GARNAME = mit-scheme
GARVERSION = 9.2
HOME_URL = http://www.gnu.org/software/mit-scheme/
DESCRIPTION = Scheme implementation with integrated editor and debugger
define BLURB
GNU/MIT Scheme is an implementation of the Scheme programming
language.  It provides an interpreter, a compiler and a debugger.  It
also features an integrated Emacs-like editor and a large runtime
library.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/stable.pkg/$(GARVERSION)/
arch = $(subst _,-,$(GARARCH))
DISTFILES = $(DISTNAME)-$(arch).tar.gz
SIGFILES = $(DISTNAME)-$(arch).tar.gz.sig
CONFIGURE_SCRIPTS = $(WORKSRC)/src/configure
BUILD_SCRIPTS = $(WORKSRC)/src/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/src/Makefile

BUILDDEPS =
LIBDEPS = ncurses

######################################################################

include ../../gar.mk
include config.mk

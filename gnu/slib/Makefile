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

NAME = SLIB
GARNAME = slib
GARVERSION = 3b4
HOME_URL =  http://www.gnu.org/software/slib
DESCRIPTION = Portable library for Scheme
define BLURB
GNU SLIB is a portable common library for the Scheme programming
language.  It supports a large variety of different Scheme
implementations, offering them a framework for using packages of
Scheme procedures and syntax.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-build.diff

BUILDDEPS =
LIBDEPS =

######################################################################

include config.mk
INSTALL_SCRIPTS = $(INSTALL_TARGETS) info
include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk

install-guile:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Installing SLIB for Guile$(OFF)"
	@$(MAKE) -C $(WORKSRC) install-lib DESTDIR=$(packageDESTDIR) \
		libdir=$(prefix)/share/guile/ $(OUTPUT)
	$(MAKECOOKIE)

install-system: install-$(WORKSRC)/Makefile-DESTDIR
	$(MAKECOOKIE)

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info files\n$(OFF)"
	$(INSTALL_INFO) $(WORKSRC)/$(GARNAME).info
	$(MAKECOOKIE)

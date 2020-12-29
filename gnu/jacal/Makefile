# Copyright © 2013 Brandon Invergo <brandon@invergo.net>
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

NAME = JACAL
GARNAME = jacal
GARVERSION = 1c3
HOME_URL =  http://www.gnu.org/software/jacal
DESCRIPTION = Symbolic mathematics system
define BLURB
GNU JACAL is an interactive symbolic mathematics program based on
Scheme.  It manipulate and simplify a range of mathematical
expressions such as equations, scalars, vectors, and matrices.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-no-info.diff
CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

BUILDDEPS = scm
LIBDEPS = slib

######################################################################

include ../../gar.lib/info.mk
include ../../gar.mk
include config.mk

post-configure:
	sed -i -e 's|\(\$${prefix}\)|\1/|' $(WORKSRC)/config.status
	sed -i -e 's|\(\$${exec_prefix}\)|\1/|' $(WORKSRC)/config.status
	$(MAKECOOKIE)

pre-build:
	sed -i -e 's|ginstall-info|install-info|g' $(WORKSRC)/Makefile
	sed -i -e 's|\(\$$(DESTDIR)\)|\1/|g' $(WORKSRC)/Makefile
	$(MAKECOOKIE)

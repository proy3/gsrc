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

NAME = MARST
GARNAME = marst
GARVERSION = 2.7
HOME_URL = http://www.gnu.org/software/marst/
DESCRIPTION = Algol-to-C translator
define BLURB
GNU MARST is an Algol-to-C translator.  The package consists of the
translator itself, a library that contains the necessary Algol 60
procedures, and a converter that converts existing Algol 60 programs
from other representations to the MARST representation.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
BUILD_SCRIPTS = $(WORKSRC)/Makefile info
INSTALL_SCRIPTS = $(WORKSRC)/Makefile info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

build-info:
	@printf "[$(OK)build$(OFF)] $(MSG)Building info files\n$(OFF)"
	cd $(WORKSRC)/doc && makeinfo marst
	$(MAKECOOKIE)

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info files\n$(OFF)"
	mkdir -p $(packageprefix)/share/info
	$(INSTALL_INFO) $(WORKSRC)/doc/marst.info
	$(MAKECOOKIE)

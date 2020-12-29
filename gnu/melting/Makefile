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

NAME = MELTING
GARNAME = melting
UPSTREAMNAME = MELTING
GARVERSION = 5.1.2
HOME_URL = http://www.gnu.org/software/melting/
DESCRIPTION = Temperature computations for a nucleic acid duplex
define BLURB
GNU MELTING computes the enthalpy, entropy and melting temperature of
helix-coil transitions of a nucleic acid duplex.
endef

######################################################################

DISTNAME = $(UPSTREAMNAME)$(GARVERSION)
MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/meltingJava/melting5/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
BUILD_SCRIPTS = $(WORKSRC)/buildProject.sh
INSTALL_SCRIPTS = all

BUILDDEPS = apache-ant
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

build-%/buildProject.sh:
	@echo -e "[$(OK)build$(OFF)] $(MSG)Running buildProject.sh in $*\n$(OFF)"
	cd $* && ./buildProject.sh
	$(MAKECOOKIE)

install-all:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Manually installing all$(OFF)"
	@mkdir -p $(packageprefix)
	@mkdir -p $(packageprefix)/bin
	@mkdir -p $(packageprefix)/$(UPSTREAMNAME)/src
	@install -m755 -D $(WORKSRC)/executable/melting $(packageprefix)/bin/melting
	@install -m755 -D $(WORKSRC)/executable/melting5.jar $(packageprefix)/bin/melting5.jar
	@for f in $(WORKSRC)/Data/*; do \
		install -m644 $$f $(packageprefix)/$(UPSTREAMNAME)/src/`$$f`; \
	done
	$(MAKECOOKIE)

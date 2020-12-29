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

NAME = V.E.R.A.
GARNAME = vera
GARVERSION = 1.21a
HOME_URL = http://www.gnu.org/software/vera/
DESCRIPTION = List of acronyms
define BLURB
V.E.R.A. (Virtual Entity of Relevant Acronyms) is a list of computing
acronyms distributed as an info document.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
BUILD_SCRIPTS = info
INSTALL_SCRIPTS = info

BUILDDEPS = texinfo
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

build-info:
	@printf "[$(OK)build$(OFF)] $(MSG)Building info files\n$(OFF)"
	cd $(WORKSRC) && makeinfo --force vera
	$(MAKECOOKIE)

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info files\n$(OFF)"
	mkdir -p $(packageprefix)/share/info
	$(INSTALL_INFO) $(WORKSRC)/vera.info
	$(INSTALL_INFO) $(WORKSRC)/vera.info-1
	$(INSTALL_INFO) $(WORKSRC)/vera.info-2
	$(INSTALL_INFO) $(WORKSRC)/vera.info-3
	$(MAKECOOKIE)

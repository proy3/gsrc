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

NAME = Cim
GARNAME = cim
GARVERSION = 5.1
HOME_URL = http://www.gnu.org/software/cim/
DESCRIPTION = Simula compiler
define BLURB
Cim is the GNU compiler for Simula, the first object-oriented
programming language.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-build:
	sed -i 's|\.\./\.\./lib/cim\.h|cim.h|' $(WORKSRC)/lib/simulation.c
	sed -i 's|\.\./\.\./lib/cim\.h|cim.h|' $(WORKSRC)/lib/simset.c
	$(MAKECOOKIE)

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

NAME = EDMA
GARNAME = edma
UPSTREAMNAME = gnuedma
GARVERSION = 0.18.6
HOME_URL = http://www.gnu.org/software/edma/
DESCRIPTION = Object-oriented component-based development environment
define BLURB
GNU EDMA is a development environment that combines ideas from both
object-oriented programming and component-based systems.  It is used
to build modular, evolving applications as well as reusable
components.  EDMA provides a convenient means to build
object-oriented programs in C without requiring C++.
Also, it has a unique component system, unlike other free software
component-based systems which imitate the design of proprietary
counterparts.  It includes a graphical wizard, gidfwizard,
a tool for building GNU EDMA Interface
definition files and to create skeleton files necessary to build
EDMA classes, and a graphical class browser, gecb.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-add-info-dir-entry.diff
INFO_FILES = edma_tutorial.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	sed -i 's/\-m32//' $(WORKSRC)/configure
	$(MAKECOOKIE)

post-configure:
	sed -i 's|BASEDIR=.*$$|BASEDIR=$(packageprefix)|' $(WORKSRC)/install-components.sh
	$(MAKECOOKIE)

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

NAME = Electric
GARNAME = electric
GARVERSION = 9.05
HOME_URL = http://www.gnu.org/software/electric/
DESCRIPTION = Electrical CAD system
define BLURB
GNU Electric is a CAD program for designing electrical circuits,
handling custom IC layout, schematic drawing and hardware
description language specifications.  Several CAD operations are
supported, such as rule checking and simulation.  Many different
types of designs can be produced and input or output in a wide
variety of formats.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).jar
SIGFILES = $(DISTNAME).jar.sig
INSTALL_SCRIPTS = jar

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.mk

extract-$(DISTFILES):
	@echo -e "[$(OK)extract$(OFF)] $(MSG)Extracting $(patsubst extract-

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

NAME = Goptical
GARNAME = goptical
GARVERSION = 1.0
HOME_URL = http://www.gnu.org/software/goptical/
DESCRIPTION = C++ optical design and simulation library
define BLURB
Goptical is a library for optical design and simulation in C++.  It
provides model classes for optical components, surfaces and
materials.  With it, one can simulate building an optical system by
creating and placing optical components in a 3d space, and visualize light
propagating through the system.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-build.diff

BUILDDEPS =
LIBDEPS = gsl

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

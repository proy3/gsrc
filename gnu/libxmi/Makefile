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

NAME = Libxmi
GARNAME = libxmi
GARVERSION = 1.2
HOME_URL = http://www.gnu.org/software/libxmi/
DESCRIPTION = Library for rasterizing 2-d vector graphics
define BLURB
GNU libxmi is a library for rasterizing 2D vector graphics for C and C++.
It supports drawing 2D primitives into a user-supplied matrix of
pixels.  It also supports the specification of sophisticated line
styles such as multi-colored dashed patterns.  Filling and texturing
polygons is also supported.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS = libtool

######################################################################

ifeq ($(FORCE_BUILD),y)
include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
else
include ../../gar.lib/broken.mk
endif
include config.mk

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

NAME = plotutils
GARNAME = plotutils
GARVERSION = 2.6
HOME_URL = http://www.gnu.org/software/plotutils/
DESCRIPTION = Plotting utilities and library
define BLURB
GNU Plotutils is a package for plotting and working with
2D graphics.  It includes a library, "libplot", for C and C++ for
exporting 2D vector graphics in many file formats.  It also has
support for 2D vector graphics animations.  The package also contains
command-line programs for plotting scientific data.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-build.diff

BUILDDEPS =
LIBDEPS = libpng

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

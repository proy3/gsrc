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

NAME = hp2xx
GARNAME = hp2xx
GARVERSION = 3.4.4
HOME_URL = http://www.gnu.org/software/hp2xx/
DESCRIPTION = Convert HP-GL format graphics to other vector and bitmap formats
define BLURB
GNU hp2xx converts vector graphics specified in the HP-GL plotter
language into a variety of graphical formats, both vector- and
raster-based, including EPS, PCX, IMG, and formats intended for use
within TeX documents.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
PATCHFILES = fix-install.diff fix-build.diff
BUILD_SCRIPTS = $(WORKSRC)/sources/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/sources/Makefile

BUILDDEPS = 
LIBDEPS = zlib libpng

######################################################################

include ../../gar.mk
include config.mk

build-%/Makefile:
	$(BUILD_ENV) $(MAKE) -C $* $(BUILD_ARGS)
	$(MAKECOOKIE)

install-%/Makefile:
	$(MAKE) -C $* install $(INSTALL_ARGS)
	$(MAKECOOKIE)

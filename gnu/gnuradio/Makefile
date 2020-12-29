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

NAME = GNU Radio
GARNAME = gnuradio
GARVERSION = 3.7.3
HOME_URL = http://www.gnu.org/software/gnuradio
DESCRIPTION = Software radio implementations
define BLURB
GNU Radio is a toolkit for implementing software radios.  Its signal
processing blocks can be combined with low-cost external RF hardware
to create software-defined radios.  Without hardware, it can be used
for simulation.  Radio applications are primarily written in Python,
with C++ support for performance-critical processing tasks.
endef

######################################################################

MASTER_SITES = http://www.gnuradio.org/releases/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
WORKOBJ = $(WORKDIR)/build-$(GARVERSION)/
CONFIGURE_SCRIPTS = $(WORKSRC)/CMakeLists.txt
BUILD_SCRIPTS = $(WORKOBJ)/Makefile
INSTALL_SCRIPTS = $(WORKOBJ)/cmake_install.cmake

BUILDDEPS =
LIBDEPS = guile boost libsdl

######################################################################

include ../../gar.mk
include config.mk

pre-build:
# Can't figure out how to specify the SDL headers location to the
# configuration script, so do some manual changes...
	if ! test -f /usr/include/SDL.h; then \
		sed -i 's|#include <SDL.h>|#include <SDL/SDL.h>|' $(WORKSRC)/gr-video-sdl/lib/*; \
	fi
	$(MAKECOOKIE)

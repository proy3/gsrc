# Copyright © 2014 Brandon Invergo <brandon@invergo.net>
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

NAME = GNU Role Playing Game Engine
GARNAME = rpge
GARVERSION = 0.0.3
HOME_URL = http://www.gnu.org/software/rpge/
DESCRIPTION = Role playing game engine
define BLURB
The GNU Role Playing Game Engine provides an engine for
creating two-dimensional, graphical role-playing games, providing,
for example, a sprite-tiling grid, sprite rendering, and event
handling.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INSTALL_SCRIPTS = $(WORKSRC)/Makefile info

BUILDDEPS =
LIBDEPS = guile libsdl libsdl_image libsdl_ttf

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

install-info:
	mkdir -p $(packageprefix)/share/info
	$(INSTALL_INFO) $(WORKSRC)/doc/$(GARNAME).info
	$(MAKECOOKIE)

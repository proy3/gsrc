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

NAME = Paint
GARNAME = gpaint
GARVERSION = 0.3.3
HOME_URL = http://www.gnu.org/software/gpaint/
DESCRIPTION = Simple paint program for GNOME
define BLURB
GNU Paint is a simple, easy-to-use paint program for the GNOME
environment.  It supports drawing freehand as well as basic shapes
and text.  It features cut-and-paste for irregular regions or
polygons.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU_ALPHA)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(GARNAME)-2-$(GARVERSION).tar.gz
SIGFILES =
WORKSRC = $(WORKDIR)/$(GARNAME)-2-$(GARVERSION)/

BUILDDEPS =
LIBDEPS = gtk2

######################################################################

ifeq ($(FORCE_BUILD),y)
	include ../../gar.lib/auto.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

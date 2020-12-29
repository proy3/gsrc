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

NAME = GCompris
GARNAME = gcompris
GARVERSION = 14.05
HOME_URL = http://www.gnu.org/software/gcompris/
DESCRIPTION = Educational games for small children
define BLURB
GCompris is a suite of educational software for children.  It
features a variety of activities suitable for kids aged 2 to 10 years
old.  The suite includes activities to introduce and develop skills
in computer use, algebra, science, reading and more.  It also
features some games such as chess and sudoku.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.bz2
SIGFILES =

BUILDDEPS =
LIBDEPS = chess libsdl_mixer glib gtk pango gdk-pixbuf libxml2

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += GCOMPRIS_LIBS="-lgmodule-2.0 -lgtk-x11-2.0 -lglib-2.0 \
				 -lgdk-x11-2.0 -lgdk_pixbuf-2.0 -lpango-1.0 \
				 -lgobject-2.0 -lrsvg-2 -lxml2"

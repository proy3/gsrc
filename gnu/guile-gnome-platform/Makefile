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

NAME = guile-gnome-platform
GARNAME = guile-gnome-platform
GARVERSION = 2.16.2
HOME_URL = http://www.gnu.org/software/guile-gnome/
DESCRIPTION = A Guile interface to GNOME development libraries
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = guile-gnome/$(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-build.diff
DOCLIBS = libgnome pango pangocairo corba gtk gdk glib gobject \
	libglade libgnomeui gnome-vfs gconf atk libgnomecanvas
INFO_FILES = $(foreach LIB,$(DOCLIBS),guile-gnome-$(LIB).info)

BUILDDEPS =
LIBDEPS = guile atk cairo gconf glib gnome-vfs gtk libbonobo libglade \
	  libgnome libgnomecanvas libgnomeui pango g-wrap guile-cairo \
	  intltool

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

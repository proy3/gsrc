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

NAME = guile-gtksourceview
GARNAME = guile-gtksourceview
UPSTREAMNAME = guile-gnome-gtksourceview
GARVERSION = 1.8.0
HOME_URL = http://www.gnu.org/software/guile-gnome/
DESCRIPTION = Guile bindings to the gtksourceview widget
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = guile-gnome/$(UPSTREAMNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = guile guile-gnome-platform g-wrap gtksourceview

######################################################################

ifeq ($(FORCE_BUILD),y)
	include ../../gar.lib/auto.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

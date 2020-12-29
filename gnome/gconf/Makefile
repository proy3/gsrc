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

NAME = GConf
GARNAME = gconf
UPSTREAMNAME = GConf
GARVERSION = 3.2.6
HOME_URL = http://projects.gnome.org/gconf/
DESCRIPTION = A configuration database system

######################################################################

empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(wordlist 1,2,$(VERSION_LIST)))

MASTER_SITES = $(MASTER_GNOME)
MASTER_SUBDIR = $(UPSTREAMNAME)/$(SERIES)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES =

BUILDDEPS =
LIBDEPS = glib intltool #dbus dbus-glib

######################################################################

include ../../gar.lib/auto.mk
include config.mk

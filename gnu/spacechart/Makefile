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

NAME = SpaceChart
GARNAME = spacechart
GARVERSION = 0.9.5
HOME_URL = http://www.gnu.org/software/spacechart/
DESCRIPTION = Stargazing in 3D under GNOME
define BLURB
GNU SpaceChart lets you view how the stars are distributed in
three-dimensional space.  It allows you, for example, to determine
the distances between stars, to view them from any point of view, or
to filter your view by spectral class and luminosity.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = gtk1

######################################################################

include ../../gar.lib/auto.mk
include config.mk

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

NAME = GNUtrition
GARNAME = gnutrition
GARVERSION = 0.32
HOME_URL = http://www.gnu.org/software/gnutrition/
DESCRIPTION = Nutrition analysis
define BLURB
GNUtrition is a free nutrition analysis software.  With it, one can
keep track of the nutritional information of food.  The software uses
the Nutrient Database of Standard Reference of the US Department of
Agriculture as a source of food nutrient information.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-install.diff

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk

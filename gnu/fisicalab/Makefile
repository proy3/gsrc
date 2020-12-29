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

NAME = FísicaLab
GARNAME = fisicalab
GARVERSION = 0.3.4
HOME_URL = http://www.gnu.org/software/fisicalab/
DESCRIPTION = Educational application for solving physics problems
define BLURB
GNU FisicaLab is an educational application for solving physics
problems.  Its main objective is allow the user to focus on physics
concepts, leaving aside the mathematical details.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = gnustep-base gnustep-make gnustep-gui gnustep-backend gsl

######################################################################

include ../../gar.lib/gnustep.mk
include config.mk

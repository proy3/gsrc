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

NAME = Archimedes
GARNAME = archimedes
GARVERSION = 2.0.1
HOME_URL = http://www.gnu.org/software/archimedes/
DESCRIPTION = Semiconductor device simulator
define BLURB
Archimedes is a free package for semiconductor device simulations.
It is intended to assist engineers in designing and simulating
submicron and mesoscopic semiconductor devices based on the Ensemble
Monte Carlo method.  It is able to handle a wide variety of materials
and structures, which are described through simple scripts.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk

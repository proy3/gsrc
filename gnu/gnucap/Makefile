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

NAME = Gnucap
GARNAME = gnucap
GARVERSION = 0.35
HOME_URL = http://www.gnu.org/software/gnucap
DESCRIPTION = Mixed analog and digital circuit simulator
define BLURB
GNUcap is a circuit analysis package.  It offers a general purpose
circuit simulator and can perform DC and transient analyses, fourier
analysis and AC analysis.  The engine is designed to do true
mixed-mode simulation.
endef

######################################################################

MASTER_SITES = http://www.gnucap.org/
MASTER_SUBDIR = archive/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
PATCHFILES = $(DISTNAME)-fix-build.diff

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk

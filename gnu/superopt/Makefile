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

NAME = Superopt
GARNAME = superopt
GARVERSION = 2.5
HOME_URL = http://www.gnu.org/software/superopt/
DESCRIPTION = Super-optimizer of given functions
define BLURB
GNU Superopt is a function sequence generator for superoptimization.  It
uses an exhaustive generate-and-test approach to find the shortest
instruction sequence for a given function.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-fix-install.diff
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.mk
include config.mk

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

NAME = gleem
GARNAME = gleem
GARVERSION = 1.2.1
HOME_URL = http://www.gnu.org/software/gleem/
DESCRIPTION = OpenGL Extremely Easy-to-use Manipulators
define BLURB
GNU gleem is a library for Java and C++ offering a set of 3D
widgets that support direct user interaction with a 3D scene.  These
widgets are used to translate along a line, translate in a plane, and
do three-dimensional translation and rotation.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/

DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
BUILD_SCRIPTS = $(WORKSRC)/c++-impl/gleem/Makefile \
		$(WORKSRC)/gl4java-impl/Makefile \
INSTALL_SCRIPTS = $(WORKSRC)/c++-impl/gleem/Makefile \
		  $(WORKSRC)/gl4java-impl/Makefile \

BUILDDEPS =
LIBDEPS =

######################################################################

ifeq ($(FORCE_BUILD),y)
	include ../../gar.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

BUILD_ARGS += prefix=$(prefix)

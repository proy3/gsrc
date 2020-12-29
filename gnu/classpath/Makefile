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

NAME = Classpath
GARNAME = classpath
GARVERSION = 0.99
HOME_URL = http://www.gnu.org/software/classpath/
DESCRIPTION = Core class libraries for Java
define BLURB
GNU Classpath provides essential libraries for Java virtual machines
and compilers.  It is compatible with a large percentage of the
language API specifications and provides a wide array of
functionality.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-build.diff
INFO_FILES = cp-hacking.info cp-tools.info cp-vmintegration.info

BUILDDEPS =
LIBDEPS = antlr2

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

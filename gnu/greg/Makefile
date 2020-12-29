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

NAME = Greg
GARNAME = greg
GARVERSION = 1.4
HOME_URL = http://www.gnu.org/software/greg/
DESCRIPTION = Software testing framework
define BLURB
GNU Greg is a framework for testing programs and libraries.  It provides
a single front-end for all tests of a package as well as a simple
framework for writing the tests.  It is loaded as a Guile module into
any software with an embedded Guile interpreter.  It also provides a
compiled module that may be dynamically linked into Guile to permit
testing external programs.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = fix-build.diff
INFO_FILES = gregdoc.info

BUILDDEPS =
LIBDEPS = guile libtool

######################################################################

ifeq ($(FORCE_BUILD),y)
include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
else
include ../../gar.lib/broken.mk
endif
include config.mk

CONFIGURE_ARGS += --with-guile-path=$(prefix)/bin/guile

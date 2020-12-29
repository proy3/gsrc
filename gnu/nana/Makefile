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

NAME = Nana
GARNAME = nana
GARVERSION = 2.5
HOME_URL = http://www.gnu.org/software/nana/
DESCRIPTION = Library for assertions, logging, performance measurement
define BLURB
GNU Nana is a framework for adding assertion checking, logging and
performance measurement to C and C++ programs.  Operations can either
be implemented directly in C or by generating debugger commands.
Checking and logging features can be enabled or disabled at compile
or runtime.
endef

######################################################################

MASTER_SITES = http://download.savannah.gnu.org/releases/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-install.diff

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

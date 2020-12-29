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

NAME = GNUbatch
GARNAME = gnubatch
GARVERSION = 1.11
HOME_URL = http://www.gnu.org/software/gnubatch/
DESCRIPTION = Advanced batch scheduling and job control
define BLURB
GNUbatch is an advanced batch scheduling system.  It executes
computational jobs at specified dates and times or according to
interdependencies.  The jobs may be completed on any number of
processors shared across a network.  Full access-control of the jobs
is supported.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = bison
LIBDEPS = ncurses gtk

######################################################################

include ../../gar.lib/auto.mk
include config.mk

NEED_USERS = $(BATCHUSR) root
NEED_GROUPS = tty root gnubatch
CONFIGURE_ARGS += BATCHUSER=$(BATCHUSR) STAGED_INSTALL=true
BUILD_ARGS += BATCHUSR=$(BATCHUSR)
INSTALL_ARGS += BATCHUSR=$(BATCHUSR)

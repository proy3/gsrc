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

NAME = DMD
GARNAME = dmd
GARVERSION = -0.5
HOME_URL = http://www.gnu.org/software/dmd/
DESCRIPTION = Daemon managing daemons
define BLURB
GNU DMD is a daemon-managing daemon, meaning that it manages the
execution of system services, replacing similar functionality found in
typical init systems.  It provides dependency-handling through a
convenient interface and is based on GNU Guile.
endef

######################################################################

MASTER_SITES = http://www.wt-lorsch.de/
MASTER_SUBDIR =
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk

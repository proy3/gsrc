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

NAME = Swbis
GARNAME = swbis
GARVERSION = 1.12
HOME_URL = http://www.gnu.org/software/swbis/
DESCRIPTION = POSIX software packaging utilities
define BLURB
Swbis is a software administration system specified by POSIX.  It
features network-transparent management of software packages for
system administrators.  For example, entire file system directories
can be copied host-to-host across a network in a transparent manner.
The package also features advanced tarball creation methods and
integrity checking mechanisms.
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
include ../../gar.lib/info.mk
include config.mk

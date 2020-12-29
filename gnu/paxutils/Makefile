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

NAME = paxutils
GARNAME = paxutils
GARVERSION = 2.4h
HOME_URL = http://www.gnu.org/software/paxutils/
DESCRIPTION = Manage cpio, tar, and pax file archives
define BLURB
GNU paxutils is a suite of archive utilities.  It contains versions
of the cpio, tar and pax archivers.
endef

######################################################################

MASTER_SITES = http://github.com/pinard/
MASTER_SUBDIR = $(GARNAME)/archive/
DISTFILES = v$(GARVERSION).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

COLLISIONS = bin/tar

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	@chmod +x $(WORKSRC)/configure
	$(MAKECOOKIE)

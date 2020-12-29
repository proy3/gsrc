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

NAME = GNUnet-fuse
GARNAME = gnunet-fuse
GARVERSION = 0.10.0
HOME_URL = http://www.gnu.org/software/gnunet/
DESCRIPTION = A FUSE filesystem client for GNUnet
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = gnunet/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = gnunet

######################################################################

include ../../gar.lib/auto.mk
include config.mk

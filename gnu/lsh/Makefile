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

NAME = lsh
GARNAME = lsh
GARVERSION = 2.1
HOME_URL = http://www.gnu.org/software/lsh/
DESCRIPTION = GNU implementation of the Secure Shell (ssh) protocols
define BLURB
GNU lsh is a free implementation of the SSH version 2 protocol.  It is
used to create a secure line of communication between two computers,
providing shell access to the server system from the client.  It
provides both the server daemon and the client application, as well
as tools for manipulating key files.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = nettle liboop

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

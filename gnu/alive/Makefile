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

NAME = Alive
GARNAME = alive
GARVERSION = 2.0.2
HOME_URL = http://www.gnu.org/software/alive/
DESCRIPTION = Autologin and keep-alive daemon
define BLURB
GNU Alive sends periodic pings to a server, generally to keep a
connection alive.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = alive/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

BUILDDEPS =
LIBDEPS = guile

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

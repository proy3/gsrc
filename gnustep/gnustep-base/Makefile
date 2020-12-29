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

NAME = GNUstep Base
GARNAME = gnustep-base
GARVERSION = 1.24.6
HOME_URL = http://www.gnustep.org/
DESCRIPTION = GNUstep foundation

######################################################################

MASTER_SITES = $(MASTER_GNUSTEP)
MASTER_SUBDIR = core/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = gnustep-make libffi libxml2

######################################################################

include ../../gar.lib/gnustep.mk
include config.mk

CONFIGURE_ARGS += --with-default-config=$(prefix)/etc/GNUstep/GNUstep.conf

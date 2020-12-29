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

NAME = Leg
GARNAME = leg
GARVERSION = 
HOME_URL = http://www.gnu.org/software/leg/
DESCRIPTION = Libraries and engines for game programming
define BLURB
GNU Leg is a set of libraries for game engines and game development.
In addition to the libraries, it also includes resource editors
designed to make game creation easier.  The package is designed to be
generic and modular, supporting many different styles of games.
endef

######################################################################

MASTER_SITES = http://download.savannah.gnu.org/releases-noredirect/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(GARNAME).tar.gz
SIGFILES = $(GARNAME).tar.gz.sig
WORKSRC = $(WORKDIR)/$(GARNAME)/
USE_AUTORECONF = y

BUILDDEPS =
LIBDEPS =

######################################################################

ifeq ($(FORCE_BUILD),y)
	include ../../gar.lib/auto.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

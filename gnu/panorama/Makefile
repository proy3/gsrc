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

NAME = Panorama
GARNAME = panorama
GARVERSION = 0.18.01
HOME_URL = http://www.gnu.org/software/panorama/
DESCRIPTION = Framework for 3D graphics production
define BLURB
GNU Panorama is a framework for producing 3D graphics.  It can perform
various effects, such as focal blur, arbitrary light sources, bump
mapping, and several lighting effects.
endef

######################################################################

empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(wordlist 1,2,$(VERSION_LIST)))

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/$(GARNAME)/$(SERIES)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 

BUILDDEPS = libtool
LIBDEPS =

######################################################################

USE_AUTORECONF = y

ifeq ($(FORCE_BUILD),y)
	include ../../gar.lib/auto.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

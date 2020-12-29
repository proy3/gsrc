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

NAME = GNU Image Manipulation Program
GARNAME = gimp
GARVERSION = 2.8.8
HOME_URL = http://www.gnu.org/software/gimp
DESCRIPTION = GNU Image Manipulation Program
define BLURB
GIMP is an application for image manipulation tasks such as photo
retouching, composition and authoring.  It supports all common image
formats as well as specialized ones.  It features a highly
customizable interface that is extensible via a plugin system.
endef

######################################################################

empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(wordlist 1,2,$(VERSION_LIST)))

MASTER_SITES = ftp://ftp.gimp.org/pub/
MASTER_SUBDIR = $(GARNAME)/v$(SERIES)/
DISTFILES = $(DISTNAME).tar.bz2
SIGFILES =

BUILDDEPS =
LIBDEPS = gtk

######################################################################

include ../../gar.lib/auto.mk
include config.mk

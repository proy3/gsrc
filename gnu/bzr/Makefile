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

NAME = Bazaar
GARNAME = bzr
GARVERSION = 2.6.0
#RELEASE = b2
HOME_URL = http://www.gnu.org/software/bzr
DESCRIPTION = The GNU distributed version control system
define BLURB

endef

######################################################################

DISTNAME = $(GARNAME)-$(GARVERSION)$(RELEASE)
empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(wordlist 1,2,$(VERSION_LIST)))

MASTER_SITES = https://launchpad.net/
MASTER_SUBDIR = $(GARNAME)/$(SERIES)/$(GARVERSION)$(RELEASE)/+download/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
CONFIGURE_SCRIPTS =
BUILD_SCRIPTS = $(WORKSRC)/setup.py
INSTALL_SCRIPTS = $(WORKSRC)/setup.py

BUILDDEPS =
LIBDEPS = zlib

######################################################################

include ../../gar.mk
include config.mk

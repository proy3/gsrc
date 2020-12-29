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

NAME = SAUCE
GARNAME = sauce
GARVERSION = 0.7.7
HOME_URL = http://www.gnu.org/software/sauce/
DESCRIPTION = An anti-spam SMTP mail filter
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
PATCHFILES = $(DISTNAME)-fix-install.diff
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile-DESTDIR

BUILDDEPS = tcl coreutils
LIBDEPS = 

######################################################################

include ../../gar.mk
include config.mk

BUILD_ARGS += prefix=$(prefix) 
DESTDIR_INSTALL_ARGS += prefix=$(prefix) INSTALL=$(prefix)/bin/install

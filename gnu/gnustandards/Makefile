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

NAME = GNU Coding Standards
GARNAME = gnustandards
GARVERSION = 2014-05-15
HOME_URL = http://www.gnu.org/software/gnustandards/
DESCRIPTION = GNU coding standards and maintainer information
define BLURB
This package contains info documents outlining the GNU coding standards
and information for GNU package maintainers.
endef

######################################################################

CVS_ROOT = $(MASTER_SAVANNAH_CVS)/$(GARNAME)
MASTER_SITES = cvs//$(CVS_ROOT)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
NOCHECKSUM = $(DISTFILES)
BUILD_SCRIPTS = info
INSTALL_SCRIPTS = info
INFO_FILES = maintain.info standards.info
COLLISIONS = share/info/dir

BUILDDEPS = texinfo
LIBDEPS =

######################################################################

include config.mk
include ../../gar.mk
include ../../gar.lib/info.mk

build-info:
	@printf "[$(OK)build$(OFF)] $(MSG)Building info files\n$(OFF)"
	cd $(WORKSRC) && makeinfo maintain
	cd $(WORKSRC) && makeinfo standards
	$(MAKECOOKIE)

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info files\n$(OFF)"
	mkdir -p $(packageprefix)/share/info
	$(INSTALL_INFO) $(WORKSRC)/maintain.info
	$(INSTALL_INFO) $(WORKSRC)/standards.info
	$(MAKECOOKIE)

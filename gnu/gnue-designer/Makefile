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

NAME = GNU Enterprise Designer
GARNAME = gnue-designer
GARVERSION = 0.5.7
HOME_URL = http://www.gnu.org/software/gnue
DESCRIPTION = An enterprise data form IDE
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNUE)
MASTER_SUBDIR = releases/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
CONFIGURE_SCRIPTS = $(WORKSRC)/setup.py
BUILD_SCRIPTS = $(WORKSRC)/setup.py
INSTALL_SCRIPTS = $(WORKSRC)/setup.py

BUILDDEPS =
LIBDEPS = gnue-common

######################################################################

include ../../gar.lib/auto.mk
include config.mk

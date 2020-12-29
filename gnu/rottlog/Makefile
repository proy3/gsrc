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

NAME = Rot[t]log
GARNAME = rottlog
GARVERSION = 0.72.2
HOME_URL = http://www.gnu.org/software/rottlog/
DESCRIPTION = Log rotation and management
define BLURB
GNU Rot[t]log is a program for managing log files.  It is used to
automatically rotate out log files when they have reached a given
size or according to a given schedule.  It can also be used to
automatically compress and archive such logs.  Rot[t]log will mail
reports of its activity to the system administrator.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-install.diff

BUILDDEPS = automake
LIBDEPS =

######################################################################

ifeq ($(FORCE_BUILD),y)
include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
else
include ../../gar.lib/broken.mk
endif
include config.mk

pre-build:
	sed -i -e 's/0300/0644/g' $(WORKSRC)/Makefile
	sed -i -e 's/0500/0644/g' $(WORKSRC)/Makefile
	sed -i -e 's/0700/0755/g' $(WORKSRC)/Makefile
	sed -i -e 's/0444/0644/g' $(WORKSRC)/Makefile
	sed -i -e 's/install_sh_DATA/INSTALL_DATA/g' $(WORKSRC)/Makefile
	chmod 644 $(WORKSRC)/rc/rc
	chmod 644 $(WORKSRC)/rc/weekly
	$(MAKECOOKIE)

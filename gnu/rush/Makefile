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

NAME = Rush
GARNAME = rush
GARVERSION = 1.7
HOME_URL = http://www.gnu.org/software/rush/
DESCRIPTION = Restricted user (login) shell
define BLURB
GNU Rush is a restricted user shell, for systems on which users
are to be provided with only limited functionality or resources.
Administrators set user rights via a configuration file which can be
used to limit, for example, the commands that can be executed, CPU
time, or virtual memory usage.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	sed -i -e '/gets is a security/d' $(WORKSRC)/gnu/stdio.in.h
	$(MAKECOOKIE)

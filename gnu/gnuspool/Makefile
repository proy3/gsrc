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

NAME = GNUspool
GARNAME = gnuspool
GARVERSION = 1.8
HOME_URL = http://www.gnu.org/software/gnuspool/
DESCRIPTION = Spooling system with a variety of interfaces
define BLURB
GNUspool is an advanced print spooling system.  In addition to the
functionality of the standard printing system, it provides
post-processing capabilities, form type handling, alignment pages and
other features.  It functions transparently on a network, sharing jobs
on any host with printers on any other host.  Several user different
interfaces are available.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-build.diff

BUILDDEPS =  
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk

NEED_USERS = $(SPOOLUSER) root
NEED_GROUPS = tty root
CONFIGURE_ARGS += SPOOLUSER=$(SPOOLUSER)
BUILD_ARGS += SPOOLUSER=$(SPOOLUSER)
INSTALL_ARGS += CFLAGS="-I$(prefix)/include \
			  -I$(prefix)/include/gtk-2.0" \
		STAGED_INSTALL=true \
		SPOOLUSER=$(SPOOLUSER)

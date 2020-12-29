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

NAME = CSSC
GARNAME = cssc
UPSTREAMNAME = CSSC
GARVERSION = 1.4.0
HOME_URL = http://www.gnu.org/software/cssc/
DESCRIPTION = File-based version control like SCCS
define BLURB
GNU CSSC provides a replacement for the legacy Unix source code control
system SCCS.  This allows old code still under that system to be
accessed and migrated on modern systems.
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
	sed -i -e '/gets is a security/d' $(WORKSRC)/gl/lib/stdio.in.h
	$(MAKECOOKIE)

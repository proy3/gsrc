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

NAME = Mach
GARNAME = gnumach
GARVERSION = 1.4
HOME_URL = http://www.gnu.org/software/hurd/
DESCRIPTION = Microkernel of the GNU system
define BLURB
GNU Mach is the microkernel around which GNU Hurd is based.  It
provides an Inter Process Communication mechanism that the Hurd uses
to define interfaces for implementing standard kernel services in a
distributed, multi-server manner.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

ifneq ($(GARARCH),i386)
include ../../gar.lib/wrong_arch.mk
else
include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
endif
include config.mk

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

NAME = FreeIPMI
GARNAME = freeipmi
GARVERSION = 1.4.5
HOME_URL = http://www.gnu.org/software/freeipmi/
DESCRIPTION = Platform management, including sensor and power monitoring
define BLURB
GNU FreeIPMI is a collection of in-band and out-of-band IPMI software
in accordance with the IPMI v1.5/2.0 specification.  These programs
provide a set of interfaces for platform management.  Common
functionality includes sensor monitoring, system event monitoring,
power control and serial-over-LAN.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = freeipmi-faq.info

BUILDDEPS =
LIBDEPS = libgcrypt libgpg-error

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

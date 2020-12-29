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

NAME = The GNU Accounting Utilities
GARNAME = acct
GARVERSION = 6.6.1
HOME_URL = http://www.gnu.org/software/acct/
DESCRIPTION = Standard login and process accounting utilities
define BLURB
GNU acct provides a means for system administrators to determine
system usage patterns.  It provides information on, for example,
connections, programs executed, and system resources used.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-doc-build.diff
INFO_FILES = accounting.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

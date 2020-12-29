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

NAME = Autoconf
GARNAME = autoconf
GARVERSION = 2.69
HOME_URL = http://www.gnu.org/software/autoconf/
DESCRIPTION = Create source code configuration scripts
define BLURB
Autoconf offers the developer a robust set of M4 macros which expand
into shell code to test the features of Unix-like systems and to
adapt automatically their software package to these systems.  The
resulting shell scripts are self-contained and portable, freeing the
user from needing to know anything about Autoconf or M4.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = m4

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

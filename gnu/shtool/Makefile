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

NAME = shtool
GARNAME = shtool
GARVERSION = 2.0.8
HOME_URL = http://www.gnu.org/software/shtool/
DESCRIPTION = Compilation of utility shell scripts into a shell tool
define BLURB
GNU shtool is a multipurpose shell tool.  It can perform the
functions of many different commands, in order to provide a single
tool to distribute with a source distribution in order to ensure
portability of shell scripts.  For example, shtool can perform the
jobs of the common commands "install", "mkdir" or "echo" on systems
that lack them.
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
include config.mk

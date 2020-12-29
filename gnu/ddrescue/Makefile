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

NAME = Ddrescue
GARNAME = ddrescue
GARVERSION = 1.19
HOME_URL = http://www.gnu.org/software/ddrescue/ddrescue.html/
DESCRIPTION = Data recovery utility
define BLURB
GNU ddrescue is a fully automated data recovery tool.  It copies data
from one file to another, working to rescue data in case of read
errors.  The program also includes a tool for manipulating its
log files, which are used to recover data more efficiently by only
reading the necessary blocks.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.lz
SIGFILES = $(DISTNAME).tar.lz.sig

BUILDDEPS =
USE_TESTS = 1

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

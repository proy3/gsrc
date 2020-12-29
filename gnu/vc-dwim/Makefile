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

NAME = vc-dwim
GARNAME = vc-dwim
GARVERSION = 1.7
HOME_URL = http://www.gnu.org/software/vc-dwim/
DESCRIPTION = Version-control-agnostic ChangeLog diff and commit tool
define BLURB
The vc-dwim package contains two tools, "vc-dwim" and "vc-chlog".
vc-dwim is a tool that simplifies the task of maintaining a ChangeLog
and using version control at the same time, for example by printing
a reminder when a file change has been described in the ChangeLog but
the file has not been added to the VC.  vc-chlog scans changed files
and generates standards-compliant ChangeLog entries based on the
changes that it detects.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

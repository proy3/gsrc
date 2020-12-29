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

NAME = Cfengine
GARNAME = cfengine
GARVERSION = 2.0.6
HOME_URL = http://www.gnu.org/software/cfengine/
DESCRIPTION = Configuration engine for system and network administration
define BLURB
Cfengine, or the configuration engine, is an agent/software robot to
configure and administer large computer networks.  It also functions
as a high-level language for designing expert systems to perform such
tasks.  It consists of a primitive intelligence for defining and
automating the configuration and maintenance of the system state.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-fix-build.diff
INFO_FILES = $(GARNAME)-Reference.info $(GARNAME)-Anomalies.info \
	$(GARNAME)-Tutorial.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

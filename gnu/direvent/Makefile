# Copyright © 2014 Brandon Invergo <brandon@invergo.net>
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

NAME = Direvent
GARNAME = direvent
GARVERSION = 5.0
HOME_URL = http://www.gnu.org/software/direvent/
DESCRIPTION = Daemon to monitor directories for events such as file removal
define BLURB
A daemon that monitors directories for events, such as creating,
deleting or modifying files.  It can monitor different sets of
directories for different events.  When an event is detected, direvent
calls a specified external program with information about the event,
such as the location within the file system where it occurred.  Thus,
"direvent" provides an easy way to react immediately if given files
undergo changes, for example, to track changes in important system
configuration files.
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

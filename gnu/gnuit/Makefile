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

NAME = GNU Interactive Tools
GARNAME = gnuit
GARVERSION = 4.9.5
HOME_URL = http://www.gnu.org/software/gnuit/
DESCRIPTION = Interactive utilities for file browsing, viewing, and more
define BLURB
The GNU Interactive Tools are a set of lightweight, interactive
command-line tools.  They include an extensible, orthodox (two-pane)
file manager, an ASCII/hex file viewer, and a process viewer/killer.
The package also includes some related utilities and scripts, such as
a tool to decompress any type of archive file.  All the
tools can be enhanced and extended through their configuration files
to perform new commands.
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

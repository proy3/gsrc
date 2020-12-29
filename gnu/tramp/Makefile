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

NAME = TRAMP
GARNAME = tramp
GARVERSION = 2.2.10
HOME_URL = http://www.gnu.org/software/tramp/
DESCRIPTION = Transparent Remote Access, Multiple Protocol GNU Emacs package
define BLURB
TRAMP is a GNU Emacs package that allows you to access files on remote
machines as though they were local files.  This includes editing
files, performing version control tasks and modifying directory
contents with dired.  Access is performed via ssh, rsh, rlogin,
telnet or other similar methods.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = tramp

BUILDDEPS = emacs
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

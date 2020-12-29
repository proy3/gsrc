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

NAME = Xlogmaster
GARNAME = xlogmaster
GARVERSION = 1.6.2
HOME_URL = http://www.gnu.org/software/xlogmaster/
DESCRIPTION = GUI program for monitoring log and other files
define BLURB
GNU Xlogmaster is a program with a graphical user interface that lets you
monitor your system logs in a convenient way.  The logs can be
displayed with filters for highlighting or hiding lines.  The program
can also be used to automate taking actions upon user-defined events.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = gtk1

######################################################################

include ../../gar.lib/auto.mk
include config.mk

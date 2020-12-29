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

NAME = GNATS
GARNAME = gnats
GARVERSION = 4.1.0
HOME_URL = http://www.gnu.org/software/gnats/
DESCRIPTION = GNU problem report and bug management system
define BLURB
GNATS is a set of tools for tracking bugs and other user-reported
software issues.  It is completely open-ended in how its database may
be queried, edited and maintained, featuring interfaces ranging from
the command-line to Emacs, though the main means of interaction is
via its web interface.  It is also flexible enough to support
user-made utilities.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info $(GARNAME)-faq.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

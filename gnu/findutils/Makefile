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

NAME = Findutils
GARNAME = findutils
GARVERSION = 4.4.2
HOME_URL = http://www.gnu.org/software/findutils/
DESCRIPTION = Operating on files matching given criteria
define BLURB
Findutils supplies the basic file directory searching utilities of
the GNU system.  It consists of two primary searching utilities:
"find" recursively searches for files in a directory according to
given criteria and "locate" lists files in a database that match a
query.  Two auxiliary tools are included: "updatedb" updates the file
name database and "xargs" may be used to apply commands with arbitrarily
long arguments.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = find-maint.info find.info

BUILDDEPS = coreutils
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

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

NAME = Recutils
GARNAME = recutils
GARVERSION = 1.7
HOME_URL = http://www.gnu.org/software/recutils/
DESCRIPTION = Manipulate plain text files as databases
define BLURB
GNU Recutils is a set of tools and libraries for creating and
manipulating text-based, human-editable databases.  Despite being
text-based, databases created with Recutils carry all of the expected
features such as unique fields, primary keys, time stamps and more.
Many different field types are supported, as is encryption.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info rec-mode.info

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

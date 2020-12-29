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

NAME = Miscfiles
GARNAME = miscfiles
GARVERSION = 1.5
HOME_URL = http://www.gnu.org/software/miscfiles/
DESCRIPTION = Data files for airport codes, zip codes, a dictionary, and more
define BLURB
GNU Miscfiles is a collection of common data files.  They
include, for example, country abbreviations, names and capital cities;
currency abbreviations and names; a Best Current Practices index; a map
of the ASCII character set; a list of three-letter airport codes; and
an English word list.
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

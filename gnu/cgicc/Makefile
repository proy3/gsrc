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

NAME = Cgicc
GARNAME = cgicc
GARVERSION = 3.2.15
HOME_URL = http://www.gnu.org/software/cgicc/
DESCRIPTION = C++ class library for writing CGI applications
define BLURB
GNU cgicc is an ANSI-compliant C++ library for writing CGI applications,
featuring support for FastCGI.  The library supports several features,
including handling both GET and POST data, handling a variety of form
data types, and on-the-fly HTML generation.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = doxygen
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk

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

NAME = Gengetopt
GARNAME = gengetopt
GARVERSION = 2.22.6
HOME_URL = http://www.gnu.org/software/gengetopt/
DESCRIPTION = Create parsers for command line options
define BLURB
GNU Gengetopt is a program to generate a C/C++ function for parsing
command-line options using the getopt_long function found in GNU
libc, removing some of the tedium of this task for large programs
that accept many options.  The options parsed by the generated
function may be in both short (e.g., "-h") and long ("--help")
formats, as specified by the GNU coding standards.  Additionally, the
output of the standard options "--help" and "--version" is generated
automatically.
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

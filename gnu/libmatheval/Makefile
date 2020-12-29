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

NAME = libmatheval
GARNAME = libmatheval
GARVERSION = 1.1.11
HOME_URL = http://www.gnu.org/software/libmatheval/
DESCRIPTION = Library for evaluating symbolic expressions
define BLURB
GNU libmatheval is a library to parse and evaluate symbolic
expressions input by the user as text.  It can be loaded from both C
and Fortran.  The interpreter is flexible, supporting any number of
variables of arbitrary names, decimal and symbolic constants, basic
unary and binary operators, and elementary mathematical functions.
It can also compute symbolic derivatives and output expressions to
strings.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = guile

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

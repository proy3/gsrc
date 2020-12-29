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

NAME = GNU MP
GARNAME = gmp
GARVERSION = 6.0.0
HOME_URL = http://www.gnu.org/software/gmp/
DESCRIPTION = Multiple-precision arithmetic library
define BLURB
GMP is a library for arbitrary precision arithmetic, operating on
signed integers, rational numbers and floating point numbers.  The
precision is only limited by the available memory.  The library is
highly optimized, with a design focus on execution speed.  It is
aimed at use in, for example, cryptography and computational algebra.
endef

######################################################################

MASTER_SITES = ftp://ftp.gmplib.org/pub/
MASTER_SUBDIR = $(DISTNAME)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = 

BUILDDEPS =
LIBDEPS =

USE_TESTS = y

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

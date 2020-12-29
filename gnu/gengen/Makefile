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

NAME = Gengen
GARNAME = gengen
GARVERSION = 1.4.2
HOME_URL = http://www.gnu.org/software/gengen/
DESCRIPTION = A parameterized-text-generator generator based on a template
define BLURB
GNU Gengen is a program to generate text-generators, i.e., functions
producing text with variable sections.  The text is first specified
by the user in a template file containing parameters, then processed by
gengen to create the text-generator.  At runtime, the variable text is
defined by the rest of the program and passed to the text-generator,
which then substitutes it into the template parameters and returns the
result.  Gengen can be used to generate C and C++ code.
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

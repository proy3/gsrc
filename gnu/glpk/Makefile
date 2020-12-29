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

NAME = GNU Linear Programming Kit
GARNAME = glpk
GARVERSION = 4.55
HOME_URL = http://www.gnu.org/software/glpk/
DESCRIPTION = GNU Linear Programming Kit, supporting the MathProg language
define BLURB
GLPK is a C library for solving large-scale linear programming (LP),
mixed integer programming (MIP), and other related problems.  It
supports the GNU MathProg modeling language, a subset of the AMPL
language, and features a translator for the language.  In addition to
the C library, a stand-alone LP/MIP solver is included in the
package.
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

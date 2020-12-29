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

NAME = TeX for the Impatient
GARNAME = teximpatient
GARVERSION = 2.3
HOME_URL = http://www.gnu.org/software/teximpatient/
DESCRIPTION = Book on TeX, plain TeX, and Eplain
define BLURB
TeX for the Impatient is a ~350 page book on TeX, plain TeX and
Eplain, written by Paul Abrahams, Kathryn Hargreaves and Karl Berry.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz install-sh
SIGFILES = $(DISTNAME).tar.gz.sig
EXTRACTDIR = $(WORKSRC)

BUILDDEPS = texlive
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk



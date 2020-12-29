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

NAME = M4
GARNAME = m4
GARVERSION = 1.4.17
HOME_URL = http://www.gnu.org/software/m4/
DESCRIPTION = Macro processor
define BLURB
GNU M4 is an implementation of the M4 macro language, which features
some extensions over other implementations, some of which are
required by GNU Autoconf.  It is used as a macro processor, which
means it processes text, expanding macros as it encounters them.  It
also has some built-in functions, for example to run shell commands
or to do arithmetic.
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

pre-build:
	exec sed -i -e '/gets is a security/d' $(WORKSRC)/lib/stdio.in.h
	$(MAKECOOKIE)

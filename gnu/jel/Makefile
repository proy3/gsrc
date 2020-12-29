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

NAME = JEL
GARNAME = jel
GARVERSION = 2.0.1
HOME_URL = http://www.gnu.org/software/jel/
DESCRIPTION = Java expression library and compiler
define BLURB
GNU JEL is a library that lets a program accept user-defined expressions
to be entered and evaluated at runtime.  In fact, the expressions are
compiled by JEL to Java bytecode to avoid the performance penalty of
adding interpreted expressions to an already-interpreted language.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INSTALL_SCRIPTS = jar

BUILDDEPS = 
LIBDEPS = 

######################################################################

EXTRACTDIR = $(WORKSRC)

include ../../gar.mk
include config.mk

install-jar:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Installing jel.jar$(OFF)"
	$(INSTALL_ENV) install -m644 -D $(WORKSRC)/lib/jel.jar \
		$(packageprefix)/share/java/jel.jar 
	$(MAKECOOKIE)

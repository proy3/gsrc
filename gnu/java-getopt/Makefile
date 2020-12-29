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

NAME = Java getopt
GARNAME = java-getopt
GARVERSION = 1.0.14
HOME_URL = http://www.gnu.org/software/java-getopt/
DESCRIPTION = Java port of GNU getopt
define BLURB
java-getopt provides a Java port of the GNU getopt function from
glibc.  It supports parsing both long and short command-line
arguments in a flexible manner, which is completely compatible with
the C version.
endef

######################################################################

MASTER_SITES = http://www.urbanophile.com/arenn/hacking/
MASTER_SUBDIR = getopt/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
EXTRACTDIR = $(WORKDIR)/$(DISTNAME)
WORKSRC = $(EXTRACTDIR)/gnu/getopt
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = java

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

javadir = $(packageprefix)/share/java/gnu/getopt

install-java:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Installing class files \
in $(prefix)/share/java$(OFF)"
	mkdir -p $(javadir)
	install -m644 -D $(WORKSRC)/Getopt.class $(javadir)/Getopt.class
	install -m644 -D $(WORKSRC)/GetoptDemo.class $(javadir)/GetoptDemo.class
	install -m644 -D $(WORKSRC)/LongOpt.class $(javadir)/LongOpt.class
	$(MAKECOOKIE)

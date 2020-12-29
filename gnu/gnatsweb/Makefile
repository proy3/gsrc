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

NAME = Gnatsweb
GARNAME = gnatsweb
GARVERSION = 4.00
HOME_URL = http://www.gnu.org/software/gnatsweb/
DESCRIPTION = Web interface to GNATS
define BLURB
Gnatsweb is the web interface to GNATS, the GNU bugtracking system.
It provides a convenient means for working remotely with a GNATS 
database.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
INSTALL_SCRIPTS = $(WORKOBJ)/Makefile-DESTDIR

BUILDDEPS = 
LIBDEPS = gnats

######################################################################

include ../../gar.mk
include config.mk

CGI_DIR ?= $(packageprefix)/www/$(GARNAME)

pre-install:
	@sed -i -e 's|/usr/bin/perl|$(PERL)|' $(WORKSRC)/gnatsweb.pl
	$(MAKECOOKIE)

install-%/Makefile-DESTDIR:
	install -d $(CGI_DIR)
	$(MAKE) -C $* install CGI_DIR=$(DESTDIR)$(CGI_DIR)
	$(MAKECOOKIE)

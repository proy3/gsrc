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

NAME = phpGrabComics
GARNAME = grabcomics
UPSTREAMNAME = phpgrabcomics
GARVERSION = 1.5.4
HOME_URL = http://www.gnu.org/software/grabcomics/
DESCRIPTION = Saves comic strips from the web
define BLURB
phpGrabComics is a program that fetches and saves comic strips from
the web.  It features both a server, which can download strips from
different sources, and ports, tiny applications which get the list of
available comics from the server.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(UPSTREAMNAME)/files/$(UPSTREAMNAME)/$(DISTNAME)/
DISTFILES = $(DISTNAME).zip
SIGFILES =
EXTRACTDIR = $(WORKDIR)/$(DISTNAME)
INSTALL_SCRIPTS = www

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

install-www:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Copying to source to $(prefix)/www$(OFF)"
	@mkdir -p $(packageprefix)/www/$(GARNAME)
	@cp -r $(WORKSRC)/www/* $(packageprefix)/www/$(GARNAME)
	$(MAKECOOKIE)

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

NAME = WebSTUMP
GARNAME = webstump
UPSTREAMNAME = WebSTUMP
GARVERSION = 2.0
HOME_URL = http://www.gnu.org/software/webstump
DESCRIPTION = Web interface to STUMP
define BLURB
WebSTUMP provides a web-based interface to STUMP.
endef

######################################################################

MASTER_SITES = http://www.algebra.com/~ichudov/
MASTER_SUBDIR = stump/download/
DISTFILES = $(GARNAME).tar.gz
SIGFILES = 
WORKSRC = $(WORKDIR)/$(GARNAME)
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = www

BUILDDEPS =
LIBDEPS = stump

######################################################################

include ../../gar.mk
include config.mk

pre-build:
	@sed -i -e "s|WEBSTUMP_HOME = /home/ichudov/public_html/stump/webstump|WEBSTUMP_HOME=$(abspath $(WORKSRC))|g" $(WORKSRC)/Makefile
	$(MAKECOOKIE)

install-www:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Copying to source to $(prefix)/www$(OFF)"
	@mkdir -p $(packageprefix)/www/stump/$(GARNAME)
	@cp -r $(WORKSRC)/* $(packageprefix)/www/stump/$(GARNAME)
	$(MAKECOOKIE)

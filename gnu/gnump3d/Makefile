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

NAME = GNUMP3d
GARNAME = gnump3d
GARVERSION = 3.0
HOME_URL = http://www.gnu.org/software/gnump3d/
DESCRIPTION = Server for streaming audio files
define BLURB
GNUMP3d is a streaming server for MP3s and OGG vorbis audio files,
movies, and other media formats.  It is small and self-contained,
presenting a simple, themeable HTML interface.  The audio files can
then be played in any player that supports streaming over HTTP.
endef

######################################################################

MASTER_SITES = http://savannah.gnu.org/download/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.mk

pre-install:
	@sed -i -e 's|\(PREFIX     = \)| $(packageprefix)|' $(WORKSRC)/Makefile
	@sed -i -e 's|$\{PREFIX\}/|$\{PREFIX\}|' $(WORKSRC)/Makefile
	$(MAKECOOKIE)

install-$(WORKSRC)/Makefile:
	cd $(WORKSRC) && $(BUILD_ENV) make install $(BUILD_ARGS)
	$(MAKECOOKIE)

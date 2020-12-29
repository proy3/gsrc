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

NAME = EMMS
GARNAME = emms
GARVERSION = 4.0
HOME_URL = http://www.gnu.org/software/emms/
DESCRIPTION = Emacs Multimedia System
define BLURB
EMMS is the Emacs Multimedia System.  It is a small front-end which
can control one of the supported external players.  Thus, it supports
whatever formats are supported by your music player.  It also
supports tagging and playlist management, all behind a clean and
light user interface.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
CONFIGURE_SCRIPTS =
BUILD_SCRIPTS = $(WORKOBJ)/Makefile
INSTALL_SCRIPTS = $(WORKOBJ)/Makefile-DESTDIR

BUILDDEPS = emacs texinfo
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

INSTALL_ARGS = MAN1PAGES= \
	       INSTALLINFO="$(prefix)/bin/install-info --infodir=$(prefix)/share/info"

build-%/Makefile:
	$(BUILD_ENV) $(MAKE) -C $* all $(BUILD_OPTS)
	$(MAKECOOKIE)

install-%/Makefile:
	@echo " ==> Running make $(INSTALL_TARGET) in $*"
	$(INSTALL_ENV) $(MAKE) -C $* $(MAKE_ARGS) $(INSTALL_ARGS) \
		PREFIX=$(packageprefix)/usr $(INSTALL_TARGET)
	$(MAKECOOKIE)

install-%/Makefile-DESTDIR:
	@echo " ==> Running make $(INSTALL_TARGET) with DESTDIR in $*"
	$(INSTALL_ENV) $(MAKE) -C $* $(MAKE_ARGS) $(INSTALL_ARGS) \
		DESTDIR=$(packageDESTDIR) \
		PREFIX=$(DESTDIR)$(packageprefix)/usr \
		$(INSTALL_TARGET)
	$(MAKECOOKIE)

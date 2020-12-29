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

NAME = Emacs Muse
GARNAME = emacs-muse
UPSTREAMNAME = muse
GARVERSION = 3.20
HOME_URL = http://www.gnu.org/software/emacs-muse/
DESCRIPTION = Authoring and publishing environment for Emacs
define BLURB
Muse is an authoring and publishing environment for GNU Emacs.  It
supports entering text in a convenient and easy-to-learn format.
Later, your documents may be published in a variety of different
formats, such as HTML, LaTeX or PDF.  Muse supports projects
consisting of several documents, which are properly merged according
to the output format.
endef

######################################################################

MASTER_SITES = $(MASTER_GNA)
MASTER_SUBDIR = $(UPSTREAMNAME)-el/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
INFO_FILES = $(UPSTREAMNAME)

BUILDDEPS =
LIBDEPS = emacs

######################################################################

include ../../gar.mk
include ../../gar.lib/info.mk
include config.mk

pre-build:
	@cp $(WORKSRC)/Makefile.defs.default $(WORKSRC)/Makefile.defs
	@sed -i -e 's|\(PREFIX   = \)/usr/local|\1$(prefix)|' $(WORKSRC)/Makefile.defs
	@sed -i -e 's|\(DESTDIR  =\)|\1$(packageDESTDIR)|' $(WORKSRC)/Makefile.defs
	$(MAKECOOKIE)


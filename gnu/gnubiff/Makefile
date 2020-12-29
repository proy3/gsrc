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

NAME = gnubiff
GARNAME = gnubiff
GARVERSION = 2.2.15
HOME_URL = http://www.gnu.org/software/gnubiff/
DESCRIPTION = Mail notification program
define BLURB
GNUbiff is a program that checks for mail and notifies you when new
messages arrive.  It supports multiple mailboxes which may be
accessed via a variety of methods such as POP3, IMAP, MH and
mailfiles.  Graphical notifications are provided with GTK and
complete integration with GNOME is supported.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/$(GARNAME)/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
IGFILES =

BUILDDEPS =
LIBDEPS = gtk intltool

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	@sed -i -e 's/\(GNUBIFF_DEP_LIBS = @GNUBIFF_DEP_LIBS@\)/ -lgthread-2.0/' \
	    $(WORKSRC)/Makefile.in $(WORKSRC)/src/Makefile.in
	$(MAKECOOKIE)

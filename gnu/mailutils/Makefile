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

NAME = Mailutils
GARNAME = mailutils
GARVERSION = 2.2
HOME_URL = http://www.gnu.org/software/mailutils/
DESCRIPTION = Utilities and library for reading and serving mail
define BLURB
GNU Mailutils is a collection of programs for managing, viewing
and processing electronic mail.  It contains both utilities and server
daemons and all operate in a protocol-agnostic way.  The underlying
libraries are also available, simplifying the addition of mail
capabilities to new software.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/

DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = libtool
LIBDEPS = gettext gdbm readline ncurses gnutls guile m4 pam

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += "LIBS=-lguile"

pre-configure:
	sed -i -e '/gets is a security/d' $(WORKSRC)/lib/stdio.in.h
	$(MAKECOOKIE)

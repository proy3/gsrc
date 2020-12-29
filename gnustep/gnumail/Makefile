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

NAME = GNUMail
GARNAME = gnumail
UPSTREAMNAME = GNUMail
GARVERSION = 1.2.0
HOME_URL = http://collaboration-world.com/gnumail/
DESCRIPTION = A GNUstep e-mail application
define BLURB
 GNUMail is a fully featured e-mail application made with GNUstep.  It
 uses Pantomime as its backend, so it supports POP3, IMAP and local
 mailboxes. 
endef

######################################################################

MASTER_SITES = $(MASTER_GNUSTEP_NONFSF)
MASTER_SUBDIR = 
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
CONFIGURE_SCRIPTS =

BUILDDEPS =
LIBDEPS = gnustep-base gnustep-gui pantomime addresses

######################################################################

include ../../gar.lib/gnustep.mk
include config.mk

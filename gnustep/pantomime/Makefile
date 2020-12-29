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

NAME = Pantomime
GARNAME = pantomime
UPSTREAMNAME = Pantomime
GARVERSION = 1.2.0
HOME_URL = http://www.collaboration-world.com/cgi-bin/project/index.cgi?pid=3/
DESCRIPTION = An e-mail framework
define BLURB
 Pantomime provides an e-mail framework, primarily for the GNUstep
 enviroment.  It is an Objective-C library that provides access to
 local mailboxes, POP3 accounts and IMAP mailboxes.  It also features
 functions for working with message objects and a full MIME encoder 
 and decoder.  Pantomime supports sending messages via a local mailer
 and an SMTP conduit.
endef

######################################################################

MASTER_SITES = $(MASTER_GNUSTEP_NONFSF)
MASTER_SUBDIR = 
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
CONFIGURE_SCRIPTS = 

BUILDDEPS =
LIBDEPS = gnustep-base

######################################################################

include ../../gar.lib/gnustep.mk
include config.mk

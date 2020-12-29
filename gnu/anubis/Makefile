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

NAME = Anubis
GARNAME = anubis
GARVERSION = 4.2
HOME_URL = http://www.gnu.org/software/anubis/
DESCRIPTION = SMTP message submission daemon
define BLURB
Anubis is a daemon that sits between the Mail User Agent (MUA) and
the Mail Transfer Agent (MTA).  When a mail is sent by a user in the
MUA, it is first passed to Anubis, which performs additional
processing to the message before passing it on for delivery by the
MTA.  Anubis may, for example, modify the message headers or body, or
encrypt or sign the message.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = anubis/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = libgpg-error

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

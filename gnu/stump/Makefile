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

NAME = STUMP
GARNAME = stump
UPSTREAMNAME = STUMP
GARVERSION = 2.5
HOME_URL = http://www.gnu.org/software/stump/
DESCRIPTION = Secure team-based Usenet moderation program
define BLURB
GNU STUMP is a robomoderator program for USENET newsgroups and mailing
lists, featuring web-based moderation.  It supports group moderation
via multiple human moderators.  It can also automatically reject
non-conforming messages without human intervention.  It includes a web
interface.
endef

######################################################################

version = $(subst .,_,$(GARVERSION))

MASTER_SITES = http://www.algebra.com/~ichudov/
MASTER_SUBDIR = $(GARNAME)/download/
DISTFILES = $(UPSTREAMNAME)_$(version).tar.gz
SIGFILES =
WORKSRC = $(WORKDIR)/$(GARNAME)/

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

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

NAME = Bayonne
GARNAME = bayonne
UPSTREAMNAME = bayonne2
GARVERSION = 2.3.2
HOME_URL = http://www.gnu.org/software/bayonne/
DESCRIPTION = Telephony server
define BLURB
Bayonne is the telephony server of the GNU Telephony project.  It
offers a scalable environment for the development and deployment of
telephony solutions, with a focus on SIP.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = ccaudio ccscript

######################################################################

include ../../gar.lib/auto.mk
include config.mk

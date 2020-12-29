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

NAME = Speex
GARNAME = speex
GARVERSION = 1.2rc1
HOME_URL = http://www.gnu.org/software/speex
DESCRIPTION = Library for patent-free audio compression format
define BLURB
GNU Speex is a patent-free audio compression codec specially
designed for speech.  It is well-adapted to internet applications,
such as VoIP.  It features compression of different bands in the same
bitstream, intensity stereo encoding, and voice activity detection.
endef

######################################################################

MASTER_SITES = http://downloads.us.xiph.org/releases/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk

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

NAME = ccAudio2
GARNAME = ccaudio
UPSTREAMNAME = ccaudio2
GARVERSION = 2.1.3
HOME_URL = http://www.gnu.org/software/ccaudio/
DESCRIPTION = Standalone C++ class framework for manipulating audio data
define BLURB
GNU ccAudio2 is a portable C++ class for working with audio data from
disk.  The classes are both endian and content aware; rather than
treating audio as binary data, this library treats it as an sequence
of samples.  It can also handle metadata information.  ccAudio2
supports sun audio, raw samples, and RIFF encoded audio data.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = ucommon gmp

######################################################################

include ../../gar.lib/auto.mk
include config.mk

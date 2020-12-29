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

NAME = GTick
GARNAME = gtick
GARVERSION = 0.5.3
HOME_URL = http://www.gnu.org/software/gtick/
DESCRIPTION = Customizable metronome application
define BLURB
GTick is a metronome application.  It supports different meters, such
as 2/4, 3/4, 4/4, etc.  It also supports a wide range of speeds, from
10 to 1000 BPM. It provides a GTK+-based user interface and it can
use both OSS and ALSA as the audio back-end.
endef

######################################################################

MASTER_SITES = http://www.antcom.de/gtick/
MASTER_SUBDIR = download/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 

BUILDDEPS = 
LIBDEPS = gtk2

######################################################################

include ../../gar.lib/auto.mk
include config.mk

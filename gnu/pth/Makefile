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

NAME = Pth
GARNAME = pth
GARVERSION = 2.0.7
HOME_URL = http://www.gnu.org/software/pth/
DESCRIPTION = Portable thread library
define BLURB
GNU Pth is a portable library providing non-preemptive, priority-based
scheduling for multiple execution threads.  Each thread has its own
program-counter, run-time stack, signal mask and errno variable.
Threads are scheduled in a cooperative way, rather than in the
standard preemptive way, such that they are managed according to
priority and events.  However, Pth also features emulation of
POSIX.1c threads ("pthreads") for backwards compatibility.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk

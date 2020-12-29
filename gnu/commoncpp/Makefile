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

NAME = Common C++
GARNAME = commoncpp
UPSTREAMNAME = commoncpp2
GARVERSION = 1.8.1
HOME_URL = http://www.gnu.org/software/commoncpp/
DESCRIPTION = (u)Common C++ framework for threaded applications
define BLURB
GNU Common C++ is an portable, optimized class framework for
threaded applications, supporting concurrent synchronization,
inter-process communications via sockets, and various methods for data
handling, such as serialization and XML parsing.  It includes the uCommon
C++ library, a smaller reimplementation.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(UPSTREAMNAME).info

BUILDDEPS =
LIBDEPS = ucommon

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-build:
	sed -i -e '50 a\#include <sys/stat.h>' $(WORKSRC)/inc/cc++/applog.h
	$(MAKECOOKIE)

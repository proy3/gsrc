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

NAME = ZRTP
GARNAME = zrtp
UPSTREAMNAME = libzrtpcpp
GARVERSION = 2.3.4
HOME_URL = http://www.gnu.org/software/ccrtp
DESCRIPTION = A C++ implementation of the ZRTP specification
define BLURB
GNU ZRTP is a C++ implementation of the ZRTP specification, a
cryptographic key-agreement protocol for VoIP.  It consists of a
system-independent core and the glue code used to connect that core
with the RTP/SRTP stack of the system.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = ccrtp/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
WORKOBJ = $(WORKDIR)/build-$(GARVERSION)/
CONFIGURE_SCRIPTS = $(WORKSRC)/CMakeLists.txt

BUILDDEPS =  
LIBDEPS = libgcrypt ccrtp

######################################################################

include ../../gar.lib/auto.mk
include config.mk

# CMake seems to ignore most environment variables. In this case, 
# libzrtp requires OpenSSL 0.98, which GSRC does not provide, but 
# since CMake does not seem to honor the PKG_CONFIG_PATH variable
# and since GSRC tries to use its own pkg-build by default, it cannot
# find the library. Here we remove the argument to use GSRC's pkg-config
# so that the thing will at least build. 
CMAKE_CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=$(prefix) \
			-DSYSCONFDIR=$(sysconfdir) \
			$(CONFIGURE_OPTS)

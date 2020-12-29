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

NAME = Mcron
GARNAME = mcron
GARVERSION = 1.0.8
HOME_URL = http://www.gnu.org/software/mcron/
DESCRIPTION = Run jobs at scheduled times
define BLURB
GNU Mcron is a complete replacement for Vixie cron.  It is used to run
tasks on a schedule, such as every hour or every Monday.  Mcron is
written in Guile, so its configuration can be written in Scheme;
the original cron format is also supported.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = guile which ed
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-spool-dir=$(sysroot)/var/cron/tabs \
		  --with-socket-file=$(sysroot)/var/cron/socket \
		  --with-allow-file=$(sysroot)/var/cron/allow \
		  --with-deny-file=$(sysroot)/var/cron/deny \
		  --with-pid-file=$(sysroot)/var/run/cron.pid \
		  --with-tmp-dir=$(sysroot)/tmp

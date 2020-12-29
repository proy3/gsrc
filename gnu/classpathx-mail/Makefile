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

NAME = Classpathx JavaMail
GARNAME = classpathx-mail
UPSTREAMNAME = mail
GARVERSION = 1.1.2
HOME_URL = http://www.gnu.org/software/classpathx-mail/
DESCRIPTION = A complete internet mail system, including MIME, for Java
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = classpathx/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(GARNAME)-$(GARVERSION)-fix-build.diff

BUILDDEPS =
LIBDEPS = classpathx-activation inetlib

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-inetlib-jar=$(prefix)/share/java/ \
	--with-activation-jar=$(prefix)/share/java/

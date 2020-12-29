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

NAME = AutoGen
GARNAME = autogen
GARVERSION = 5.18.3
HOME_URL = http://www.gnu.org/software/autogen/
DESCRIPTION = Automated program generator
define BLURB
AutoGen is a program to ease the maintenance of programs that contain
large amounts of repetitive text.  It automates the construction of
these sections of the code, simplifying the task of keeping the
text in sync.  It also includes an
add-on package called AutoOpts, which is specialized for the
maintenance and documentation of program options.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/rel$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = guile

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

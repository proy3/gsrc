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

NAME = a2ps
GARNAME = a2ps
GARVERSION = 4.14
HOME_URL = http://www.gnu.org/software/a2ps/
DESCRIPTION = Any file to PostScript, including pretty-printing
define BLURB
GNU a2ps converts almost anything to a PostScript file, ready for
printing. It accomplishes this by being able to delegate files to
external handlers, such as Groff and Gzip.  It handles as many steps
as is necessary to produce a pretty-printed file.  It also includes
some extra abilities for special cases, such as pretty-printing
"--help" output.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info regex.info

BUILDDEPS = gperf
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

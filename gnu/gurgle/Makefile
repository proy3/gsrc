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

NAME = GURGLE
GARNAME = gurgle
GARVERSION = 1.61
HOME_URL = http://www.gnu.org/software/gurgle
DESCRIPTION = GNU Report Generator Language
define BLURB
GURGLE produces database report listings from record and field
information from a file.  It uses the report to produce
(La)TeX-formatted output, plain ASCII text, troff, PostScript, HTML, XML,
or any other ASCII-based output format.  It may be used for producing
large bodies of text where small parts of the text are substituted
with information from the database.  GURGLE supports GNUSQL,
PostgreSQL, MySQL and CA-Ingres databases.
endef

######################################################################

MASTER_SITES = http://homepages.inf.ed.ac.uk/timc/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

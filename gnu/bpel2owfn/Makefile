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

NAME = BPEL2oWFN
GARNAME = bpel2owfn
GARVERSION = 2.4
HOME_URL = http://www.gnu.org/software/bpel2owfn/
DESCRIPTION = Translating web service in BPEL to Open Workflow Nets
define BLURB
GNU BPEL2oWFN translates a web service expressed in Web Service Business
Process Execution Language (WS-BPEL) into an open Workflow Net
(oWFN).  It may additionally convert a BPEL4Chor choreography to a
Petri Net model.  Properties of Petri Nets may be analyzed
efficiently, due to the use of static analysis to make the models
compact.  Control and data flow analysis, as well as basic checks for
deadlocks and other such properties are available.
endef

######################################################################

MASTER_SITES = $(MASTER_GNA)
MASTER_SUBDIR = service-tech/$(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

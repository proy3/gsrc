# Rules for GARStow ports built using autotools.
#
# Copyright (C) 2010 Adam Sampson
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.

USE_AUTORECONF ?=
USE_PARALLEL ?= y
USE_TESTS ?=

HELP_SCRIPTS ?= $(WORKSRC)/configure
CONFIGURE_SCRIPTS ?= \
	$(if $(USE_AUTORECONF),$(WORKSRC)/autoreconf,) \
	$(WORKSRC)/configure
BUILD_SCRIPTS ?= $(WORKOBJ)/Makefile
TEST_SCRIPTS ?= $(if $(USE_TESTS),$(WORKOBJ)/Makefile,)
INSTALL_SCRIPTS ?= $(WORKOBJ)/Makefile-DESTDIR

include ../../gar.mk

BUILD_ARGS += $(if $(USE_PARALLEL),$(MAKE_ARGS_PARALLEL),)

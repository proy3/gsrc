# Environment variable settings for GARStow ports.
#
# Copyright (C) 2010 Adam Sampson
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.

# Some packages don't like being built with unusual locales, so use the
# default.
LANG := C
LC_ALL := C

# Use optimisations (defined in gar.conf.mk, but overridden by some ports).
#CFLAGS += $(CFLAGS_OPTIMIZE)
#CXXFLAGS += $(CFLAGS_OPTIMIZE)
#LDFLAGS += $(LDFLAGS_OPTIMIZE)

# Allow us to link to libraries we installed.
PATH := $(prefix)/bin:$(prefix)/sbin:$(PATH)
LD_LIBRARY_PATH := $(if $(LD_LIBRARY_PATH),$(LD_LIBRARY_PATH):)$(prefix)/lib

# When building GARStow packages using a non-GARStow toolchain (i.e. when we're
# bootstrapping from a different system), we need to specify some more paths
# explicitly.
ifdef BOOTSTRAP
C_INCLUDE_PATH := $(prefix)/include$(if $(C_INCLUDE_PATH),:$(C_INCLUDE_PATH))
CPLUS_INCLUDE_PATH := $(prefix)/include$(if $(CPLUS_INCLUDE_PATH),:$(CPLUS_INCLUDE_PATH))
LDFLAGS += -L$(prefix)/lib
endif

# Configure pkg-config, wrapped by GARStow's fake-pkg-config script.
PKG_CONFIG := pkg-config
PKG_CONFIG_PATH := $(prefix)/lib/pkgconfig:$(prefix)/share/pkgconfig:$(PKG_CONFIG_PATH)
FAKE_PKG_CONFIG_LOG = $(CURDIR)/$(COOKIEDIR)/fpc.log

# Don't install GConf schemas directly; a hook will do it later.
GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL := 1

# Make XDG data files available.
XDG_DATA_DIRS := $(prefix)/share

# Choose your Python binary
PYTHON := python
PYTHON2_VER := 2.7
PYTHON3_VER := 3.3
PYTHON_PATH := $(prefix)/lib/python${PYTHON2_VER}/site-packages/:$(prefix)/lib/python${PYTHON3_VER}:$(PYTHON_PATH)

# Export variables to the build environment.
unexport CFLAGS
export CPLUS_INCLUDE_PATH
unexport CPPFLAGS
unexport CXXFLAGS
export C_INCLUDE_PATH
export FAKE_PKG_CONFIG_LOG
export GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL
export LANG
export LC_ALL
export LDFLAGS
export LD_LIBRARY_PATH
export PATH
export PKG_CONFIG
export PKG_CONFIG_PATH
export XDG_DATA_DIRS
export PYTHON
export PYTHON_PATH

# Make sure these variables aren't in the build environment.
unexport DISPLAY
unexport DBUS_SESSION_BUS_ADDRESS
unexport GPG_AGENT_INFO
unexport PYTHONSTARTUP
unexport SESSION_MANAGER
unexport SSL_AUTH_SOCK
unexport XAUTHORITY

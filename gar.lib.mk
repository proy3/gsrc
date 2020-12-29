
# Standard rules for GARStow ports.
#
# Copyright (C) 2012, 2013, 2014 Brandon Invergo
# Copyright (C) 2010, 2011 Brian Gough
# Copyright (C) 2004, 2005, 2006, 2007, 2008, 2009, 2010 Adam Sampson
# Copyright (C) 2001 Nick Moffitt
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.

# cookies go here, so we have to be able to find them for
# dependency checking.
VPATH += $(COOKIEDIR)

# So these targets are all loaded into bbc.port.mk at the end,
# and provide actions that would be written often, such as
# running configure, automake, makemaker, etc.
#
# The do- targets depend on these, and they can be overridden by
# a port maintainer, since they'e pattern-based.  Thus:
#
# extract-foo.tar.gz:
#	(special stuff to unpack non-standard tarball, such as one
#	accidentally named .gz when it's really bzip2 or something)
#
# and this will override the extract-%.tar.gz rule.

# convenience variable to make the cookie.
DOMAKECOOKIE = mkdir -p `dirname $(COOKIEDIR)/$@` && date >> $(COOKIEDIR)/$@
MAKECOOKIE = @$(DOMAKECOOKIE)

# The command to use to acquire a lock; the lock name will be appended to this.
# (If you can't do locking for some reason, set this to "env dummy=".)
WITH_LOCK := mkdir -p $(TEMPDIR) && $(SCRIPTSDIR)/with-lock $(TEMPDIR)/lock.

#################### FETCH RULES ####################

MASTER_SUBDIR ?=
DISTFILE_SUBDIR ?=
SIGFILE_SUBDIR ?=
PATCHFILE_SUBDIR ?=

MASTER_DIRS = $(addsuffix $(MASTER_SUBDIR),$(MASTER_SITES))
DISTFILE_DIRS = $(addsuffix $(DISTFILE_SUBDIR),$(DISTFILE_SITES))
SIGFILE_DIRS = $(addsuffix $(SIGFILE_SUBDIR),$(SIGFILE_SITES))
PATCHFILE_DIRS = $(addsuffix $(PATCHFILE_SUBDIR),$(PATCHFILE_SITES))

FILE_SITES = file://$(FILEDIR)/ file://$(GARCHIVEDIR)/

DISTFILE_URLS = $(foreach DIR,$(FILE_SITES) $(DISTFILE_DIRS) $(MASTER_DIRS),$(addprefix $(DIR),$(DISTFILES)))
SIGFILE_URLS = $(foreach DIR,$(FILE_SITES) $(SIGFILE_DIRS) $(MASTER_DIRS),$(addprefix $(DIR),$(SIGFILES)))
PATCHFILE_URLS = $(foreach DIR,$(FILE_SITES) $(PATCHFILE_DIRS) $(MASTER_DIRS),$(addprefix $(DIR),$(PATCHFILES)))

# FIXME: doesn't handle colons that are actually in the URL.
# Need to do some URI-encoding before we change the http:// to
# http// etc.
URLS = $(subst ://,//,$(DISTFILE_URLS) $(SIGFILE_URLS) $(PATCHFILE_URLS))


# Download the file if and only if it doesn't have a preexisting
# checksum file.  Loop through available URLs and stop when you
# get one that doesn't return an error code.
$(DOWNLOADDIR)/%:
	if test -f $(COOKIEDIR)/checksum-$*; then : ; else \
		printf "[$(OK)fetch$(OFF)] $(MSG)Grabbing $(OFF)$@\n"; \
		for i in $(filter %/$*,$(URLS)); do  \
			printf "[$(OK)fetch$(OFF)] $(MSG)Trying $(OFF)$$i\n"; \
			$(MAKE) $$i $(OUTPUT) || continue; \
			break; \
		done; \
		if test -r $@ ; then : ; else \
			printf "[$(ERR)fetch$(OFF)] $(MSG)Failed to download $(OFF)$@$(MSG)!$(OFF)\n" 1>&2; \
			false; \
		fi; \
	fi

# We specify --passive-ftp for all protocols because it's possible for
# an HTTP URL to redirect to an FTP one -- download.kde.org works like
# this, for instance.
# We specify a custom User-Agent because some clueless host sites
# block wget specifically.
# We also specify --no-check-certificate since we can't check the validity.
WGET_OPTS ?= -c --no-check-certificate --passive-ftp -U "GSRC/1.0"

# download an http URL (colons omitted)
http//%:
	wget $(WGET_OPTS) -O $(DOWNLOADDIR)/$(notdir $*).partial http://$*
	mv $(DOWNLOADDIR)/$(notdir $*).partial $(DOWNLOADDIR)/$(notdir $*)

# download an https URL (colons omitted)
https//%:
	wget $(WGET_OPTS) -O $(DOWNLOADDIR)/$(notdir $*).partial https://$*
	mv $(DOWNLOADDIR)/$(notdir $*).partial $(DOWNLOADDIR)/$(notdir $*)

# download an ftp URL (colons omitted)
ftp//%:
	wget $(WGET_OPTS) -O $(DOWNLOADDIR)/$(notdir $*).partial ftp://$*
	mv $(DOWNLOADDIR)/$(notdir $*).partial $(DOWNLOADDIR)/$(notdir $*)

# link to a local copy of the file
# (absolute path)
file///%:
	if test -f /$*; then \
		ln -sf "/$*" $(DOWNLOADDIR)/$(notdir $*); \
	else \
		false; \
	fi $(OUTPUT)

# link to a local copy of the file
# (relative path)
file//%:
	if test -f $*; then \
		ln -sf $(CURDIR)/$* $(DOWNLOADDIR)/$(notdir $*); \
	else \
		false; \
	fi $(OUTPUT)

# Using Jeff Waugh's rsync rule.
# DOES NOT PRESERVE SYMLINKS!
rsync//%:
	rsync -azvL --progress rsync://$* $(DOWNLOADDIR)/

# Download a directory tree as a tarball.
RSYNC_OPTS ?= -az
RSYNC_PATH ?=
rsynctree//%:
	mkdir -p $(DOWNLOADDIR)/rsync
	rsync -v --progress $(RSYNC_OPTS) $(RSYNC_PATH) $(DOWNLOADDIR)/rsync
	cd $(DOWNLOADDIR)/rsync && tar -czvf ../out *
	mv $(DOWNLOADDIR)/out $(DOWNLOADDIR)/$*

# Using Jeff Waugh's scp rule
scp//%:
	scp -C $* $(DOWNLOADDIR)/

# Check out source from CVS.
CVS_CO_OPTS ?= -D$(strip $(GARVERSION)) -P
CVS_MODULE ?= $(GARNAME)
cvs//%:
	mkdir -p $(DOWNLOADDIR)/cvs
	cd $(DOWNLOADDIR)/cvs && \
		cvs -z3 -d:$(CVS_ROOT) co -d $(DISTNAME) $(CVS_CO_OPTS) $(CVS_MODULE) && \
		tar czvf ../$(notdir $*) $(DISTNAME)

# Check out source from Subversion.
SVN_REVISION ?= "{$(strip $(GARVERSION))}"
SVN_CO_OPTS ?= -r $(SVN_REVISION)
svnco//%:
	mkdir -p $(DOWNLOADDIR)/svn
	cd $(DOWNLOADDIR)/svn && \
		svn co $(SVN_CO_OPTS) $(SVN_PATH) $(DISTNAME) && \
		tar czvf ../$(notdir $*) $(DISTNAME)

# Check out source from Darcs.
DARCS_GET_OPTS ?= --partial --to-match "date $(GARVERSION)"
darcs//%:
	mkdir -p $(DOWNLOADDIR)/darcs
	cd $(DOWNLOADDIR)/darcs && \
		darcs get $(DARCS_GET_OPTS) $(DARCS_PATH) $(DISTNAME) && \
		tar -czvf ../$(notdir $*) $(DISTNAME)

# Check out source from Git.
GIT_REVISION ?= v$(strip $(GARVERSION))
git//%:
	mkdir -p $(DOWNLOADDIR)/git
	cd $(DOWNLOADDIR)/git && \
		git clone $(GIT_PATH) $(DISTNAME) && \
		(cd $(DISTNAME) && git checkout $(GIT_REVISION)) && \
		tar czvf ../$(notdir $*) $(DISTNAME)

# Check out source from Mercurial.
HG_REVISION ?= $(strip $(GARVERSION))
HG_CLONE_OPTS ?= -r "$(HG_REVISION)"
hg//%:
	mkdir -p $(DOWNLOADDIR)/hg
	cd $(DOWNLOADDIR)/hg && \
		hg clone $(HG_CLONE_OPTS) $(HG_PATH) $(DISTNAME) && \
		tar czvf ../$(notdir $*) $(DISTNAME)

# Check out source from Bazaar.
BZR_REVISION ?= before:date:$(strip $(GARVERSION))
BZR_CHECKOUT_OPTS ?= -r "$(BZR_REVISION)" --lightweight
bzr//%:
	mkdir -p $(DOWNLOADDIR)/bzr
	cd $(DOWNLOADDIR)/bzr && \
		bzr checkout $(BZR_CHECKOUT_OPTS) $(BZR_PATH) $(DISTNAME) && \
		tar czvf ../$(notdir $*) $(DISTNAME)

#################### CHECKSUM RULES ####################

# check a given file's checksum against $(CHECKSUM_FILE) and
# error out if it mentions the file without an "OK".

sha256sums:
	@printf "[$(ERR)sha256sums$(OFF)] $(MSG)No checksum file available!\n"
	@printf "$(MSG)If you trust the downloaded files you can generate the checksums with\n"
	@printf "make -C $(shell pwd) makesums GPGV=true$(OFF)\n"
	@exit 1

checksum-%: $(CHECKSUM_FILE)
	@printf "[$(OK)checksum$(OFF)] $(MSG)Running $(CHECKSUM_CMD) on $(OFF)$*\n"
	if grep -- '  $(DOWNLOADDIR)/$*$$' $(CHECKSUM_FILE); then \
		if LC_ALL="C" LANG="C"  grep -- '  $(DOWNLOADDIR)/$*$$' $(CHECKSUM_FILE) | $(CHECKSUM_CMD) -c | grep ':[ ]\+OK'; then \
			printf "[$(OK)checksum$(OFF)] $(MSG)$(CHECKSUM_FILE) is OK$(OFF)\n"; \
			$(DOMAKECOOKIE); \
		else \
			printf "[$(ERR)checksum$(OFF)] $(MSG)$* failed checksum test!$(OFF)\n" 1>&2; \
			false; \
		fi \
	else \
		printf "[$(ERR)checksum$(OFF)] $(MSG)$* not in $(CHECKSUM_FILE) file!$(OFF)\n" 1>&2; \
		false; \
	fi $(OUTPUT)

# use a signature file to check the file it refers to
GPGV ?= gpgv --keyring $(GPG_KEYRING)

checksig-%.sig.asc:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking GPG signature $(OFF)$*\n"
	$(GPGV) $(DOWNLOADDIR)/$*.sig.asc $(DOWNLOADDIR)/$*
	$(MAKECOOKIE)

checksig-%.asc.txt:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking GPG signature $(OFF)$*\n"
	$(GPGV) $(DOWNLOADDIR)/$*.asc.txt $(DOWNLOADDIR)/$*
	$(MAKECOOKIE)

checksig-%-asc.txt:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking GPG signature $(OFF)$*\n"
	$(GPGV) $(DOWNLOADDIR)/$*-asc.txt $(DOWNLOADDIR)/$(subst -tar-,.tar.,$*)
	$(MAKECOOKIE)

checksig-%.sig:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking GPG signature $(OFF)$*\n"
	$(GPGV) $(DOWNLOADDIR)/$*.sig
	$(MAKECOOKIE)

checksig-%.sign:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking GPG signature $(OFF)$*\n"
	$(GPGV) $(DOWNLOADDIR)/$*.sign
	$(MAKECOOKIE)

checksig-%.asc:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking GPG signature $(OFF)$*\n"
	$(GPGV) $(DOWNLOADDIR)/$*.asc
	$(MAKECOOKIE)

checksig-%.md5sum:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking MD5 checksums $(OFF)$*\n"
	cd $(DOWNLOADDIR) && md5sum -c $*.md5sum
	$(MAKECOOKIE)

checksig-%.sha1:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking SHA1 checksums $(OFF)$*\n"
	cd $(DOWNLOADDIR) && sha1sum -c $*.sha1
	$(MAKECOOKIE)

checksig-%.sha256:
	@printf "[$(OK)checksig$(OFF)] $(MSG)Checking SHA256 checksums $(OFF)$*\n"
	cd $(DOWNLOADDIR) && sha256sum -c $*.sha256
	$(MAKECOOKIE)

#################### GARCHIVE RULES ####################

# while we're here, let's just handle how to back up our
# checksummed files

garchive-%:
	-test -d $(GARCHIVEDIR)/ || mkdir -p $(GARCHIVEDIR)
	-test -h $(DOWNLOADDIR)/$* || cp -f $(DOWNLOADDIR)/$* $(GARCHIVEDIR)/
	$(MAKECOOKIE)


#################### EXTRACT RULES ####################

# Enable the "regular user" behaviour for tar, so that we don't extract
# archives with random users or world-writable permissions.
TAR_OPTS = \
	--no-same-owner \
	--no-same-permissions

# rule to extract files with tar xzf
extract-%.tar.Z extract-%.tgz extract-%.tar.gz extract-%.taz:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	gzip -dc $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) | tar xf - $(TAR_OPTS) -C $(EXTRACTDIR)
	$(MAKECOOKIE)

# rule to extract files with tar and bzip
extract-%.tar.bz extract-%.tar.bz2 extract-%.tbz:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	bzip2 -dc $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) | tar xf - $(TAR_OPTS) -C $(EXTRACTDIR)
	$(MAKECOOKIE)

# rule to extract files with tar and lzip
extract-%.tar.lz:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	lzip -dc $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) | tar xf - $(TAR_OPTS) -C $(EXTRACTDIR)
	$(MAKECOOKIE)

# rule to extract files with tar and xz
extract-%.tar.xz extract-%.tar.lzma:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	xz -dc $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) | tar xf - $(TAR_OPTS) -C $(EXTRACTDIR)
	$(MAKECOOKIE)

# rule to extract files with tar
extract-%.tar:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	tar xf $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) $(TAR_OPTS) -C $(EXTRACTDIR)
	$(MAKECOOKIE)

# rule to extract files with cpio
extract-%.cpio.gz:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	gzip -dc $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) | (cd $(EXTRACTDIR) && cpio -mid $(CPIO_OPTS))
	$(MAKECOOKIE)

# rule to extract files with zip
extract-%.zip:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	unzip -o $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) -d $(EXTRACTDIR)
	$(MAKECOOKIE)

# rule to extract RPM files with rpm2cpio and cpio
extract-%.rpm:
	@printf "[$(OK)extract$(OFF)] $(MSG)Extracting $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	rpm2cpio $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) | (cd $(EXTRACTDIR) && cpio -mid $(CPIO_OPTS))
	$(MAKECOOKIE)

# Unmatched files should just be copied.
# This is a bit of a kludge -- it's to allow us to have packages that are built
# from a load of downloaded files (i.e. cvsweb checkouts) and a patch.
extract-%:
	@printf "[$(OK)extract$(OFF)] $(MSG)Copying $(OFF)$(patsubst extract-%,$(DOWNLOADDIR)/%,$@)\n"
	mkdir -p $(WORKSRC)
	cp $(patsubst extract-%,$(DOWNLOADDIR)/%,$@) $(WORKSRC)
	$(MAKECOOKIE)

#################### PATCH RULES ####################

PATCHOPTS ?= -p2
PATCHDIR ?= $(WORKSRC)
PATCH = patch $(PATCHOPTS) -d $(PATCHDIR)

# apply bzipped patches
patch-%.bz patch-%.bz2:
	@printf "[$(OK)patch$(OFF)] $(MSG)Applying patch $(OFF)$(patsubst patch-%,$(DOWNLOADDIR)/%,$@)\n"
	bzip2 -dc $(patsubst patch-%,$(DOWNLOADDIR)/%,$@) | $(PATCH)
	$(MAKECOOKIE)

# apply gzipped patches
patch-%.gz:
	@printf "[$(OK)patch$(OFF)] $(MSG)Applying patch $(OFF)$(patsubst patch-%,$(DOWNLOADDIR)/%,$@)\n"
	gzip -dc $(patsubst patch-%,$(DOWNLOADDIR)/%,$@) | $(PATCH)
	$(MAKECOOKIE)

# apply normal patches
patch-%:
	@printf "[$(OK)patch$(OFF)] $(MSG)Applying patch $(OFF)$(patsubst patch-%,$(DOWNLOADDIR)/%,$@)\n"
	$(PATCH) < $(patsubst patch-%,$(DOWNLOADDIR)/%,$@)
	$(MAKECOOKIE)

# This is used by makepatch
%/gar-base.diff:
	@printf "[$(OK)makepatch$(OFF)] $(MSG)Creating patch $(OFF)$@\n"
	EXTRACTDIR=$(SCRATCHDIR) COOKIEDIR=$(SCRATCHDIR)-$(COOKIEDIR) $(MAKE) extract
	if diff -x 'config.log' -x 'config.status' -ru $(SCRATCHDIR) $(WORKDIR) | grep -v '^Only in' > $@; then :; else \
		rm $@; \
	fi $(OUTPUT)


####################### HELP RULES ######################

help-%/configure:
	@printf "[$(OK)help$(OFF)] $(MSG)Running configure --help in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) ./configure --help=short

help-%/setup.py:
	@printf "[$(OK)help$(OFF)] $(MSG)Running python setup.py --help in $(OFF)$*\n"
	cd $* && $(PYTHON) setup.py --help

#################### CONFIGURE RULES ####################

ifneq ($(prefix),/usr/local/bin)
DIRPATHS = --prefix=$(prefix)
endif

ifneq ($(sysconfdir),$(prefix)/etc)
DIRPATHS += --sysconfdir=$(sysconfdir)
endif

ifneq ($(vardir),$(prefix)/var)
DIRPATHS += --localstatedir=$(vardir)
DIRPATHS += --sharedstatedir=$(vardir)/com
endif

CONFIGURE_ARGS ?= $(DIRPATHS)
CONFIGURE_ARGS += $(CONFIGURE_OPTS)
CONFIGURE_NAME ?= configure

AUTORECONF_ARGS ?= -vfi

# Rebuild autoconf files in a source directory.
configure-%/autoreconf:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running autoreconf in $(OFF)$*\n"
	cd $* && $(AUTORECONF_ENV) autoreconf $(AUTORECONF_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

LIBTOOLIZE_ARGS ?= -vfi

# Rebuild libtool files in a source directory.
configure-%/libtoolize:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running libtoolize in $(OFF)$*\n"
	cd $* && $(LIBTOOLIZE_ENV) libtoolize $(LIBTOOLIZE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# configure a package that has an autoconf-style configure script, coping
# correctly when WORKOBJ is set to something other than WORKDIR.
configure-%/configure:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running $(CONFIGURE_NAME) in $(OFF)$*\n"
	mkdir -p $(WORKOBJ)
	cd $(if $(WORKOBJ_CHANGED_P),$(WORKOBJ),$*) && $(CONFIGURE_ENV) $(if $(WORKOBJ_CHANGED_P),$(LEAVE_WORKOBJ)/$*,.)/$(CONFIGURE_NAME) $(CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

XMKMF_ARGS ?= -a

# configure a package that uses imake
# FIXME: untested and likely not the right way to handle the
# arguments
configure-%/Imakefile:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running xmkmf in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) xmkmf $(XMKMF_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# CMake doesn't respect many of the standard environment variables, so we have
# to tell it explicitly where to look for some things.
CMAKE_CONFIGURE_ARGS ?= \
	-DCMAKE_INSTALL_PREFIX=$(prefix) \
	-DSYSCONFDIR=$(sysconfdir) \
	-DPKG_CONFIG_EXECUTABLE=$(PKG_CONFIG) \
	-DPKGCONFIG_EXECUTABLE=$(PKG_CONFIG) \
	-DSDL_INCLUDE_DIR=$(prefix)/include/SDL

# configure a package that uses CMake
configure-%/CMakeLists.txt:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running cmake in $(OFF)$*\n"
	mkdir -p $(WORKOBJ)
	cd $(if $(WORKOBJ_CHANGED_P),$(WORKOBJ),$*) && $(CONFIGURE_ENV) cmake $(if $(WORKOBJ_CHANGED_P),$(LEAVE_WORKOBJ)/$* ,)$(CMAKE_CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# configure using Python distutils
configure-%/setup.py:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running setup.py config in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) $(PYTHON) setup.py config $(PY_BUILD_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

RUBY_DIRPATHS = --prefix=$(packageprefix)
RUBY_CONFIGURE_ARGS ?= $(RUBY_DIRPATHS)

# configure a Ruby extension
configure-%/extconf.rb:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running extconf.rb in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) ruby extconf.rb $(RUBY_CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# configure the other sort of Ruby extension
configure-%/setup.rb:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running setup.rb config in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) ruby setup.rb config $(RUBY_CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# configure a third sort of Ruby extension
configure-%/install.rb:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running install.rb config in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) ruby install.rb config $(RUBY_CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# There is no standardisation for SCons arguments; we have to try several
# possibilities.
SCONS_ARGS ?= \
	prefix=$(prefix) \
	PREFIX=$(prefix)

# configure using SCons (which is only needed by some packages...)
configure-%/SConstruct:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running scons configure in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) scons configure $(SCONS_DEBUG) $(SCONS_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

CABAL_CONFIGURE_ARGS ?= --prefix=$(prefix)

# configure using Cabal
configure-%/Setup.hs:
	@printf "[$(OK)configure$(OFF)] $(MSG)Compiling Setup in $(OFF)$*\n"
	cd $* && ghc --make Setup -o Setup $(OUTPUT)
	@printf "[$(OK)configure$(OFF)] $(MSG)Running Setup configure in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) ./Setup configure $(CABAL_CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

WAF_CONFIGURE_ARGS ?= $(DIRPATHS)

# configure using waf
configure-%/waf:
	@printf "[$(OK)configure$(OFF)] $(MSG)Running waf configure in $(OFF)$*\n"
	cd $* && $(CONFIGURE_ENV) ./waf configure $(WAF_CONFIGURE_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

#################### BUILD RULES ####################

BUILD_ARGS += $(BUILD_OPTS)

BUILD_FAIL = (printf "[$(ERR)build$(OFF)] $(MSG)Build failed. Exiting.$(OFF)\n" && exit 1)

# build from a standard gnu-style makefile's default rule.
build-%/Makefile build-%/makefile build-%/GNUmakefile:
	@printf "[$(OK)build$(OFF)] $(MSG)Running make in $(OFF)$*\n"
	$(BUILD_ENV) $(MAKE) -C $* $(MAKE_ARGS) $(BUILD_ARGS) $(OUTPUT) || \
		$(BUILD_FAIL)
	$(MAKECOOKIE)

build-%/Makefile-BSD:
	@printf "[$(OK)build$(OFF)] $(MSG)Running make in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) pmake $(BUILD_ARGS) $(OUTPUT) || $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using Python distutils
build-%/setup.py:
	@printf "[$(OK)build$(OFF)] $(MSG)Running setup.py build in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) $(PYTHON) setup.py build $(PY_BUILD_ARGS) $(OUTPUT) \
		|| $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using Ruby setup.rb
build-%/setup.rb:
	@printf "[$(OK)build$(OFF)] $(MSG)Running setup.rb setup in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) ruby setup.rb setup $(RUBY_BUILD_ARGS) $(OUTPUT) \
		|| $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using Ruby install.rb
build-%/install.rb:
	@printf "[$(OK)build$(OFF)] $(MSG)Running install.rb setup in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) ruby install.rb setup $(RUBY_BUILD_ARGS) $(OUTPUT) \
		|| $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using SCons (which pretends not to have a seperate configure step,
# having "sticky options" instead...)
build-%/SConstruct:
	@printf "[$(OK)build$(OFF)] $(MSG)Running scons in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) scons $(SCONS_DEBUG) $(SCONS_ARGS) $(OUTPUT) \
		|| $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using Cabal
build-%/Setup.hs:
	@printf "[$(OK)build$(OFF)] $(MSG)Running Setup build in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) ./Setup build $(CABAL_BUILD_ARGS) $(OUTPUT) \
		|| $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using waf
build-%/waf:
	@printf "[$(OK)build$(OFF)] $(MSG)Running waf in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) ./waf $(WAF_BUILD_ARGS) $(OUTPUT) || $(BUILD_FAIL)
	$(MAKECOOKIE)

# build using ant (java)
build-%/build.xml:
	@printf "[$(OK)build$(OFF)] $(MSG)Running ant in $(OFF)$*\n"
	cd $* && $(BUILD_ENV) ant $(ANT_BUILD_ARGS) build $(OUTPUT) || $(BUILD_FAIL)
	$(MAKECOOKIE)

#################### TEST RULES ####################

TEST_ARGS ?= check

# Test a program where "make check" (or similar) runs the test.
test-%/Makefile test-%/makefile test-%/GNUmakefile:
	@printf "[$(OK)test$(OFF)] $(MSG)Testing in $(OFF)$*\n"
	$(TEST_ENV) $(MAKE) -C $* $(MAKE_ARGS) $(TEST_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# Test a program using Python distutils.
# Not all setup.py instances have a test command...
test-%/setup.py:
	set -e; cd $* && \
		if $(PYTHON) setup.py --help test >/dev/null 2>&1; then \
			printf "[$(OK)test$(OFF)] $(MSG)Running setup.py test in $(OFF)$*\n"; \
			$(TEST_ENV) $(PYTHON) setup.py test $(PY_TEST_ARGS) $(OUTPUT); \
		else \
			printf "[$(ERR)test$(OFF)] $(MSG)No test support in $(OFF)$*\n"; \
		fi
	$(MAKECOOKIE)

# Test a program using Cabal.
test-%/Setup.hs:
	@printf "[$(OK)test$(OFF)] $(MSG)Running Setup test in $(OFF)$*\n"
	cd $* && $(TEST_ENV) ./Setup test $(CABAL_TEST_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# Test using waf
test-%/waf:
	@printf "[$(OK)test$(OFF)] $(MSG)Running waf check in $(OFF)$*\n"
	cd $* && $(TEST_ENV) ./waf check $(WAF_TEST_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

#################### INSTALL RULES ####################

# The format of stow package names.
PACKAGENAME ?= $(strip $(GARNAME))-$(strip $(GARVERSION))$(if $(PATCHNUM),-$(strip $(PATCHNUM)))$(if $(GARPROFILE),-$(strip $(GARPROFILE)))

# The package home directory. This'll be stowed into $(prefix).
packagedir = $(packagesdir)/$(PACKAGENAME)

# Directory containing GARstow files for the package.
dotgardir = $(prefix)/.gar/$(strip $(GARNAME))$(if $(GARPROFILE),-$(strip $(GARPROFILE)))

# Directories to use during installation.
packageDESTDIR = $(packagesdir)/$(PACKAGENAME)-DEST
packageprefix = $(packageDESTDIR)$(prefix)
packagedotgardir = $(packageDESTDIR)$(dotgardir)
packagesysconfdir = $(packageDESTDIR)$(sysconfdir)
packagevardir = $(packageDESTDIR)$(vardir)
packagedocs = $(packageprefix)/share/doc/$(strip $(GARNAME))
packageexamples = $(packageprefix)/share/examples/$(strip $(GARNAME))

# Directories that should have pristine versions stored to be merged upon
# installation.
#	Removed: sysconf $(sysconfdir) (etc/)
#	var $(vardir)
#	boot $(bootdir)
#	rootlib /lib
CREATED_MERGE_DIRS =

# Directories that will be merged if created by a package, but won't be
# created automatically.
MERGE_DIRS = \
	$(CREATED_MERGE_DIRS) \
	root /

prepare-install:
	@printf "[$(OK)install$(OFF)] $(MSG)Preparing staging area$(OFF)\n"
	rm -fr $(packageDESTDIR)
	mkdir -p $(packageDESTDIR)$(prefix)
	set -e; \
		set -- $(CREATED_MERGE_DIRS); \
		while [ "$$1" != "" ]; do \
			src=$(packagedotgardir)/$$1; \
			dest=$(packageDESTDIR)$$2; \
			mkdir -p $$src `dirname $$dest`; \
			rm -f $$dest; \
			ln -sf $$src $$dest; \
			shift; shift; \
		done $(OUTPUT)
	$(MAKECOOKIE)

finish-install:
	@printf "[$(OK)install$(OFF)] $(MSG)Moving files from staging area$(OFF)\n"
	set -e; \
		set -- $(CREATED_MERGE_DIRS); \
		while [ "$$1" != "" ]; do \
			rmdir -v $(packagedotgardir)/$$1 $(OUTPUT) || true; \
			rm -v $(packageDESTDIR)$$2 $(OUTPUT); \
			shift; shift; \
		done $(OUTPUT)
	rm -rvf $(packagedir) $(OUTPUT)
	mv $(packageDESTDIR)$(prefix) $(packagedir)
	rm -rv $(packageDESTDIR) $(OUTPUT)
	$(MAKECOOKIE)

GNU_INSTALL_ARGS = \
	prefix=$(packageprefix) \
	exec_prefix=$(packageprefix) \
	sysconfdir=$(packagesysconfdir) \
	localstatedir=$(packagevardir) \
	sharedstatedir=$(packagevardir)/com
INSTALL_TARGET ?= install
INSTALL_ARGS ?= $(GNU_INSTALL_ARGS)

# Use "make install" with prefix-changing.
install-%/Makefile install-%/makefile install-%/GNUmakefile:
	@printf "[$(OK)install$(OFF)] $(MSG)Running make $(INSTALL_TARGET) in $(OFF)$*\n"
	$(INSTALL_ENV) $(MAKE) -C $* $(MAKE_ARGS) $(INSTALL_ARGS) $(INSTALL_TARGET) $(OUTPUT)
	$(MAKECOOKIE)

# Use "make install" with DESTDIR.
DESTDIR_INSTALL_ARGS ?=
install-%/Makefile-DESTDIR:
	@printf "[$(OK)install$(OFF)] $(MSG)Running make $(INSTALL_TARGET) with DESTDIR in $(OFF)$*\n"
	$(INSTALL_ENV) $(MAKE) -C $* $(MAKE_ARGS) $(DESTDIR_INSTALL_ARGS) $(INSTALL_TARGET) DESTDIR=$(packageDESTDIR) $(OUTPUT)
	$(MAKECOOKIE)

install-%/Makefile-BSD:
	@printf "[$(OK)install$(OFF)] $(MSG)Running pmake $(INSTALL_TARGET) in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) pmake $(INSTALL_ARGS) $(INSTALL_TARGET) $(OUTPUT)
	$(MAKECOOKIE)

# install using Python distutils

PY_DIRPATHS = --prefix=$(prefix)
PY_INSTALL_ARGS ?= $(PY_DIRPATHS)

# We have to create the installation directory first because otherwise
# setuptools (spit) will complain.
install-%/setup.py:
	@printf "[$(OK)install$(OFF)] $(MSG)Running setup.py install in $(OFF)$*\n"
	mkdir -p $(packageDESTDIR)`python -c 'from distutils.sysconfig import get_python_lib; print get_python_lib()'`
	cd $* && $(INSTALL_ENV) $(PYTHON) setup.py install --root=$(packageDESTDIR) $(PY_INSTALL_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# install using Ruby setup.rb
install-%/setup.rb:
	@printf "[$(OK)install$(OFF)] $(MSG)Running setup.rb install in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) ruby setup.rb install $(RUBY_INSTALL_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

# install using Ruby install.rb
install-%/install.rb:
	@printf "[$(OK)install$(OFF)] $(MSG)Running install.rb install in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) ruby install.rb install $(RUBY_INSTALL_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

SCONS_INSTALL_ARGS = \
	destdir=$(packageDESTDIR) \
	DESTDIR=$(packageDESTDIR)

# install using SCons
install-%/SConstruct:
	@printf "[$(OK)install$(OFF)] $(MSG)Running scons in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) scons install $(SCONS_ARGS) $(SCONS_INSTALL_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

CABAL_INSTALL_ARGS ?= --copy-prefix=$(packageDESTDIR)$(prefix)

# install using Cabal
install-%/Setup.hs:
	@printf "[$(OK)install$(OFF)] $(MSG)Running Setup copy in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) ./Setup copy $(CABAL_INSTALL_ARGS) $(OUTPUT)
	@printf " $(MSG)Generating Haskell package config in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) ./Setup register --gen-pkg-config=package.conf $(OUTPUT)
	if [ -e $*/package.conf ]; then \
		mkdir -p $(packagedotgardir)/haskell; \
		install -m644 $*/package.conf $(packagedotgardir)/haskell; \
	fi $(OUTPUT)
	$(MAKECOOKIE)

# install using CMake
install-%/cmake_install.cmake:
	@printf "[$(OK)install$(OFF)] $(MSG)Running cmake in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) env DESTDIR=$(packageDESTDIR) cmake -P cmake_install.cmake $(OUTPUT)
	$(MAKECOOKIE)

# install using waf
install-%/waf:
	@printf "[$(OK)install$(OFF)] $(MSG)Running waf install in $(OFF)$*\n"
	cd $* && $(INSTALL_ENV) env DESTDIR=$(packageDESTDIR) ./waf install $(WAF_INSTALL_ARGS) $(OUTPUT)
	$(MAKECOOKIE)

######################################
# Use a manifest file of the format:
# src:dest[:mode[:owner[:group]]]
#   as in...
# ${WORKSRC}/nwall:bin/nwall:2755:root:tty
# ${WORKSRC}/src/foo:share/foo
# ${WORKSRC}/yoink:etc/yoink:0600

# Okay, so for the benefit of future generations, this is how it
# works:
#
# First of all, we have this file with colon-separated lines.
# The $(shell cat foo) routine turns it into a space-separated
# list of words.  The foreach iterates over this list, putting a
# colon-separated record in $(ZORCH) on each pass through.
#
# Next, we have the macro $(MANIFEST_LINE), which splits a record
# into a space-separated list, and $(MANIFEST_SIZE), which
# determines how many elements are in such a list.  These are
# purely for convenience, and could be inserted inline if need
# be.
MANIFEST_LINE = $(subst :, ,$(ZORCH))
MANIFEST_SIZE = $(words $(MANIFEST_LINE))

# So the install command takes a variable number of parameters,
# and our records have from two to five elements.  Gmake can't do
# any sort of arithmetic, so we can't do any really intelligent
# indexing into the list of parameters.
#
# Since the last three elements of the $(MANIFEST_LINE) are what
# we're interested in, we make a parallel list with the parameter
# switch text (note the dummy elements at the beginning):
MANIFEST_FLAGS = notused notused --mode= --owner= --group=

# ...and then we join a slice of it with the corresponding slice
# of the $(MANIFEST_LINE), starting at 3 and going to
# $(MANIFEST_SIZE).  That's where all the real magic happens,
# right there!
#
# following that, we just splat elements one and two of
# $(MANIFEST_LINE) on the end, since they're the ones that are
# always there.  Slap a semicolon on the end, and you've got a
# completed iteration through the foreach!  Beaujolais!

# FIXME: using -D may not be the right thing to do!
install-$(MANIFEST_FILE):
	@printf "[$(OK)install$(OFF)] $(MSG)Installing from $(MANIFEST_FILE)$(OFF)\n"
	WORKSRC=$(WORKSRC) ; $(foreach ZORCH,$(shell cat $(MANIFEST_FILE)), install -Dc $(join $(wordlist 3,$(MANIFEST_SIZE),$(MANIFEST_FLAGS)),$(wordlist 3,$(MANIFEST_SIZE),$(MANIFEST_LINE))) $(word 1,$(MANIFEST_LINE)) $(packageprefix)/$(word 2,$(MANIFEST_LINE)) ;)
	$(MAKECOOKIE)

# Function to allow searching for dependencies on a path, without needing
# to specify full directory name.
pathsearch = $(firstword $(wildcard $(addsuffix /$(strip $(1)),$(strip $(2)))))
DEPPATH ?= .. $(GARPKGDIR) $(PKGGROUPDIRS)
DEP = $(call pathsearch,$*,$(DEPPATH))

# Standard deps install into the standard install dir.  For the
# BBC, we set the includedir to the build tree and the libdir to
# the install tree.  Most dependencies work this way.
dep-$(GARDIR)/%:
	if [ "$(filter $*,$(IGNORE_DEPS))" != "" ] ; then \
		printf "[$(OK)install-deps$(OFF)] $(MSG)Ignoring dependency $*$(OFF)\n" ; \
	else \
		printf "[$(OK)install-deps$(OFF)] $(MSG)Building $* as a dependency$(OFF)\n" ; \
		$(if $(FORCE_REBUILD),,$(MAKE) -C $(DEP) install-p $(OUTPUT) || ($(MAKE) -C $(DEP) reinstall-p && $(MAKE) -C $(DEP) reinstall $(OUTPUT)) ) || $(MAKE) -C $(DEP) install $(OUTPUT); \
	fi

######################################
# Commands for installing different types of files

INSTALL_BIN = install_bin () { mkdir -p $(packageprefix)/bin && install -m755 $$* $(packageprefix)/bin; } && install_bin
INSTALL_SBIN = install_sbin () { mkdir -p $(packageprefix)/sbin && install -m755 $$* $(packageprefix)/sbin; } && install_sbin
INSTALL_INCLUDE = install_include () { mkdir -p $(packageprefix)/include && install -m644 $$* $(packageprefix)/include; } && install_include
INSTALL_LIB = install_lib () { mkdir -p $(packageprefix)/lib && install -m755 $$* $(packageprefix)/lib; } && install_lib
INSTALL_MAN = install_man () { for x in $$*; do v=`echo $$x | sed 's/.*\.//'`; mkdir -p $(packageprefix)/man/man$$v && install -m644 $$x $(packageprefix)/man/man$$v; done; } && install_man
INSTALL_CATMAN = install_catman () { for x in $$*; do v=`echo $$x | sed 's/.*\.//'`; mkdir -p $(packageprefix)/man/cat$$v && install -m644 $$x $(packageprefix)/man/cat$$v; done; } && install_catman
INSTALL_INFO = install_info () { mkdir -p $(packageprefix)/share/info && install -m644 $$* $(packageprefix)/share/info; } && install_info
INSTALL_DOCS = install_docs () { mkdir -p $(packagedocs) && cp -R $$* $(packagedocs); } && install_docs
FONTSNAME ?= $(strip $(GARNAME))
INSTALL_FONTS = install_fonts () { mkdir -p $(packageprefix)/share/fonts/$(FONTSNAME) && cp -R "$$@" $(packageprefix)/share/fonts/$(FONTSNAME); } && install_fonts
INSTALL_SYSCONF = install_sysconf () { mkdir -p $(sysconfdir) && install -m644 $$* $(sysconfdir); } && install_sysconf
INSTALL_LADSPA = install_ladspa () { mkdir -p $(packageprefix)/lib/ladspa && install -m755 $$* $(packageprefix)/lib/ladspa; } && install_ladspa
INSTALL_THEMES = install_themes () { mkdir -p $(packageprefix)/share/themes && cp -R "$$@" $(packageprefix)/share/themes; } && install_themes
INSTALL_HOOKS = install_hooks () { \
	for x in $$*; do \
		n=`basename $$x`; \
		case $$n in \
			*.*) \
				d=$(packageDESTDIR)$(prefix)/.gar/gar.`echo $$n | sed 's,^.*\.,,'`; \
				f=`echo $$n | sed 's,\..*$$,,'`; \
				;; \
			*) \
				d=$(packagedotgardir); \
				f=$$n; \
				;; \
		esac; \
		mkdir -p $$d; \
		install -m755 $$x $$d/$$f; \
	done \
	} && install_hooks

SYMLINK_BIN = symlink_bin () { from=$$1; shift; mkdir -p $(packageprefix)/bin && for x in $$* ; do ln -sf $$from $(packageprefix)/bin/$$x ; done } && symlink_bin
SYMLINK_SBIN = symlink_sbin () { from=$$1; shift; mkdir -p $(packageprefix)/sbin && for x in $$* ; do ln -sf $$from $(packageprefix)/sbin/$$x ; done } && symlink_sbin
SYMLINK_LIB = symlink_lib () { from=$$1; shift; mkdir -p $(packageprefix)/lib && for x in $$* ; do ln -sf $$from $(packageprefix)/lib/$$x ; done } && symlink_lib

SUFFIX_PROG = suffix_prog () { \
	suffix=$$1; shift; \
	for x in $$*; do \
		case "$$x" in $$suffix*) continue ;; esac; \
		n=`basename $$x`; \
		maybe_mv () { \
			if [ -f $$1 ] ; then \
				echo "Renaming $$1 to $$2"; \
				mv $$1 $$2; \
			fi \
		}; \
		maybe_mv $$x $$x-$$suffix; \
		for s in 1 2 3 4 5 8; do \
			maybe_mv $(packageprefix)/man/man$$s/$$n.$$s $(packageprefix)/man/man$$s/$$n-$$suffix.$$s; \
			maybe_mv $(packageprefix)/share/man/man$$s/$$n.$$s $(packageprefix)/share/man/man$$s/$$n-$$suffix.$$s; \
		done; \
		if [ -d $(packageprefix)/info ]; then \
			(cd $(packageprefix)/info && for x in $$n $$n-*; do \
				maybe_mv $$x `echo $$x | sed "s,^$$n,$$n-$$suffix,"`; \
			done); \
		fi; \
	done \
	} && suffix_prog

#################### CHECK-DEP RULES ####################

CHECKDEP_TARGETS = users groups

NEED_USERS ?=
NEED_GROUPS ?=

checkdep-users:
	set -e; for user in $(NEED_USERS) -; do \
		[ "$$user" = "-" ] && continue; \
		printf "[$(OK)checkdep-users$(OFF)] $(MSG)Checking if user %s exists$(OFF)\n" $$user; \
		$(PYTHON) -c "import pwd; pwd.getpwnam('$$user')" 2>/dev/null || \
			(printf "[$(ERR)checkdep-users$(OFF)] $(MSG)User %s is required \
to run this program.\nPlease create the the user or check if the program \
supports changing the \nrequired user.$(OFF)\n" $$user && exit 1); \
	done $(OUTPUT)

checkdep-groups:
	set -e; for group in $(NEED_GROUPS) -; do \
		[ "$$group" = "-" ] && continue; \
		printf "[$(OK)checkdep-groups$(OFF)] $(MSG)Checking if group %s exists$(OFF)\n" $$group; \
		$(PYTHON) -c "import grp; grp.getgrnam('$$group')" 2>/dev/null  || \
			(printf "[$(ERR)checkdep-groups(OFF)] $(MSG)Group $$group is required to \
run this program.\nPlease create the the group or check if the program supports \
changing the \nrequired group.$(OFF)\n" && exit 1); \
	done $(OUTPUT)
	$(MAKECOOKIE)

#################### SYS-INSTALL RULES ####################

SYSINSTALL_TARGETS = check normalise collisions packagevars install

# Some files which multiple packages seem to contain. These get
# removed before stowing.
COLLISIONS ?= \
	share/info/configure.info* \
	share/info/standards.info* \
	share/info/dir \
	share/info/dir.old \
	lib/libiberty.* \
	lib/perl5/*/*/perllocal.pod \
	lib/perl5/site_perl/*/*/perllocal.pod \
	share/applications/mimeinfo.cache \
	share/fonts/X11/*/fonts.cache* \
	share/fonts/X11/*/fonts.dir \
	share/fonts/X11/*/fonts.scale \
	share/mime/XMLnamespaces \
	share/mime/aliases \
	share/mime/generic-icons \
	share/mime/globs \
	share/mime/globs2 \
	share/mime/icons \
	share/mime/magic \
	share/mime/mime.cache \
	share/mime/subclasses \
	share/mime/treemagic \
	share/mime/types

# When a package is removed (or replaced with a newer version), files matching
# any of these regexps in $(prefix)/lib that aren't present in the new version
# are copied into compatlibs.
COMPATLIBS = \
	^lib.*\.so\.[0-9]+$$

# Packages that may contain files that this package is allowed to replace.
DECONFLICT = compatlibs

# The architecture of the machine this package is built for.
# A package can override this to "any" if it's not architecture-specific.
GARARCH ?= $(shell uname -m)

# Variables that will be stored in $(dotgardir)/package_vars for use during
# package installation, and used as part of the package hash.
PACKAGE_VARS = \
	GARNAME \
	GARVERSION \
	GARPROFILE \
	prefix \
	sysconfdir \
	vardir \
	bootdir \
	packagesdir \
	packagedir \
	dotgardir

# Variables that will be included in PACKAGE_VARS only if the package has
# changed them from the default value.
OPTIONAL_PACKAGE_VARS = \
	GARREVISION \
	DECONFLICT \
	COMPATLIBS

# Additional variables to include in the package hash.
PACKAGE_IDENT_VARS = \
	GARARCH \
	CFLAGS_OPTIMIZE \
	LDFLAGS_OPTIMIZE \
	IGNORE_DEPS

# Files to include in the package hash, relative to the package source
# directory. (We may include more files in the future.)
PACKAGE_IDENT_FILES = \
	Makefile

sysinstall-check:
	@printf "[$(OK)sysinstall$(OFF)] $(MSG)Checking status of DESTDIR install$(OFF)\n"
	if [ "`ls $(packagedir)`" ]; then \
		printf "[$(OK)sysinstall$(OFF)] $(MSG)Successful DESTDIR install$(OFF)\n"; \
	else \
		printf "[$(ERR)sysinstall$(OFF)] $(MSG)DESTDIR install failed, uninstalling$(OFF)\n"; \
		$(MAKE) -C $(WORKOBJ) uninstall $(OUTPUT); \
		exit 1; \
	fi
	$(MAKECOOKIE)


sysinstall-collisions:
	@printf "[$(OK)sysinstall$(OFF)] $(MSG)Removing collisions$(OFF)\n"
	rm -rf $(foreach FILE,$(COLLISIONS),$(packagedir)/$(FILE))
	$(MAKECOOKIE)

sysinstall-normalise:
	@printf "[$(OK)sysinstall$(OFF)] $(MSG)Normalising directory layout$(OFF)\n"
	set -e; \
	normalise () { \
		rmdir $$1 2>/dev/null || true; \
		if [ -d $$1 ]; then \
			printf "[$(OK)sysinstall$(OFF)] $(MSG)Moving contents of $$1 to $$2$(OFF)\n"; \
			mkdir -p $$2; \
			cp -a $$1/* $$2; \
			rm -fr $$1; \
		fi; \
	}; \
	normalise $(packagedir)/man $(packagedir)/share/man; \
	normalise $(packagedir)/info $(packagedir)/share/info; \
	normalise $(packagedir)/doc $(packagedir)/share/doc; \
	normalise $(packagedir)/games $(packagedir)/bin  $(OUTPUT)
	$(MAKECOOKIE)

sysinstall-packagevars:
	@printf "[$(OK)sysinstall$(OFF)] $(MSG)Writing package metadata$(OFF)\n"
	test -d $(dotgardir) || mkdir -p $(dotgardir);
	(cd $(packagedir) \
	&& find . -not -type d -print > $(dotgardir)/FILES \
	&& find . -mindepth 2 -depth -type d -print > $(dotgardir)/DIRS ) \
	|| $(SYSINSTALL_FAIL)
	cat Makefile $(CHECKSUM_FILE) | sha256sum > $(dotgardir)/BUILD $(OUTPUT)

SYSINSTALL_FAIL = (rm -f $(packagesdir)/$(strip $(GARNAME)) $(COOKIEDIR)/sysinstall-*; false)

sysinstall-install:
	@printf "[$(OK)sysinstall$(OFF)] $(MSG)Installing to $(prefix)$(OFF)\n"
	(cp -r -v -f --symbolic-link --target-directory=$(prefix) $(packagedir)/* $(OUTPUT) && ln -n -v -f -s $(PACKAGENAME) $(dotgardir)/VERSION $(OUTPUT)) || $(SYSINSTALL_FAIL) $(OUTPUT)

sysinstall-uninstall:
	rm -f $(COOKIEDIR)/sysinstall-*
	(test -d $(dotgardir) || (printf "[$(ERR)sysinstall$(OFF)] $(MSG)$(GARNAME) is not installed$(OFF)\n" && exit 1)) && \
	( cd $(prefix) ; \
	test -f $(dotgardir)/FILES && rm -f -- `cat $(dotgardir)/FILES` $(OUTPUT); \
	test -f $(dotgardir)/DIRS && rmdir --ignore-fail-on-non-empty -v -- `cat $(dotgardir)/DIRS` $(OUTPUT) ; \
	rm -f $(dotgardir)/FILES $(dotgardir)/DIRS $(dotgardir)/VERSION $(dotgardir)/BUILD $(OUTPUT); \
	rmdir $(dotgardir) $(OUTPUT))
	rm -f $(packagesdir)/$(strip $(GARNAME))

sysinstall-uninstall-pkg:
	rm -rvf $(packagedir) $(OUTPUT)
	rm -f $(COOKIEDIR)/sysinstall-* $(COOKIEDIR)/*-install $(OUTPUT)
	rm -rf $(COOKIEDIR)/install-* $(OUTPUT)


# Mmm, yesssss.  cookies my preciousssss!  Mmm, yes downloads it
# is!  We mustn't have nasty little gmakeses deleting our
# precious cookieses now must we?
.PRECIOUS: $(DOWNLOADDIR)/% $(COOKIEDIR)/% $(FILEDIR)/%

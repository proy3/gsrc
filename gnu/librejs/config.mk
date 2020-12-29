## Configuration options for librejs ##

# GSRC currently does not provide the Mozilla Addon-SDK, nor is it
# ever likely to do so. You must provide the install location of
# the SDK here (required to build LibreJS)
CONFIGURE_OPTS ?= ADDON_SDK=/opt/mozilla-addon-sdk
BUILD_OPTS ?=

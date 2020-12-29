## Configuration options for rottlog ##

CONFIGURE_OPTS ?= LOG_OWN=$(shell whoami) LOG_GROUP=$(shell whoami) \
		  ROTT_ETCDIR=$(prefix)/etc/rottlog \
		  LOCKFILE=$(prefix)/var/lock/LOCK.rottlog
BUILD_OPTS ?=

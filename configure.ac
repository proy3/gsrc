AC_INIT(gsrc, 2014.10.11, bug-gsrc@gnu.org)
AC_CONFIG_SRCDIR([gar.mk])

AM_INIT_AUTOMAKE([foreign])

AC_ARG_WITH([readline])
AC_ARG_ENABLE([foo])

AC_PATH_PROG([RECSEL], [recsel])
AC_PATH_PROG([RECFMT], [recfmt])

AC_CONFIG_FILES([gsrc config.mk setup.sh GNUmakefile doc/Makefile], [chmod +x gsrc])
AC_SUBST(CONFIGURE_ARGS,$ac_configure_args)
AC_OUTPUT

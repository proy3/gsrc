# Copyright 2012 Brandon Invergo <brandon@invergo.net>
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# This is a basic Autoconf configure.ac file for Python-based
# projects. It is not intended to be used as-is, but rather to be
# modified to the specific needs of the project.


# The minimum-required Python versions
m4_define(python_min_ver, 2.6)


# Unless these macros are included upstream somewhere, this must be included
m4_include([m4/python.m4])


# Initialize Autoconf.
AC_INIT(bzr, 2.6b2,,,)

# Load macros from the m4/ directory
AC_CONFIG_MACRO_DIR([m4])

# Ensure that srcdir contains setup.py
AC_CONFIG_SRCDIR(setup.py)

# Here we check if we are using Python 3
PC_PYTHON_VERIFY_VERSION([$PYTHON], 3.0,
                          py3k=true,
                          py3k=false)
# If a Python 3 interpreter was found, look specifically for a Python 2 one
if test "$py3k" = "true" ; then
   m4_define_default([_PYTHON2_BINS], [python2 python2.7 python2.6])
   AC_PATH_PROGS(PYTHON, [_PYTHON2_BINS])				 
else
# otherwise check that the Python 2 version is sufficient
   PC_PYTHON_VERIFY_VERSION([$PYTHON], python_min_ver, ,
                            [AC_MSG_ERROR(Python interpreter too old)])
fi
if test -z "$PYTHON"; then
   AC_MSG_ERROR(No Python 2 interpreter found)
fi

PC_PYTHON_CHECK_HEADERS(have_python_h=yes, have_python_h=no)
AC_SUBST([HAVE_PYTHON_H], $have_python_h)
                       
PC_PYTHON_TEST_LIBS([PyObject_Print])
                     
# Add PYTHON_LIBS to LIBS
LIBS="$LIBS $PYTHON_LIBS"

PC_PYTHON_CHECK_PLATFORM

PC_PYTHON_SITE_PACKAGE_DIR
PC_PYTHON_EXEC_PACKAGE_DIR

PC_PYTHON_CHECK_MODULE([xml.etree.cElementTree],,
                       [AC_MSG_ERROR(The Python module cElementTree is required)])
PC_PYTHON_CHECK_MODULE([paramiko])
PC_PYTHON_CHECK_MODULE([Cython])
AC_SUBST([HAVE_CYTHON], [$pc_cv_python_module_Cython])
PC_PYTHON_CHECK_MODULE([Pyrex])
AC_SUBST([HAVE_PYREX], [$pc_cv_python_module_Pyrex])

# Files to be configured
AC_CONFIG_FILES([Makefile])
# Generate config.status
AC_OUTPUT

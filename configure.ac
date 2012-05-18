AC_INIT(sslsniff.cpp)
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE(sslsniff,0.8)
AC_PROG_LIBTOOL
AC_PROG_CC
AC_PROG_CXX
AC_PROG_INSTALL
AC_LANG_CPLUSPLUS

AX_CHECK_OPENSSL

BOOST_REQUIRE([1.35])
BOOST_ASIO([mt])
BOOST_FILESYSTEM([mt])
BOOST_THREADS([mt])

AM_PATH_LOG4CPP([])

AC_CHECK_HEADER([net/pfvar.h],[natapi="pf"],,[-])
AC_CHECK_HEADER([linux/netfilter_ipv4.h],[natapi="netfilter"],,[-])
AC_ARG_ENABLE(pf,
	AS_HELP_STRING([--enable-pf],
	               [Enable BSD pf support, overriding autodetection]),
	               [natapi="pf"],)
case "$natapi" in
netfilter)
	CPPFLAGS="-DHAVE_NETFILTER $CPPFLAGS"
	;;
pf)
	CPPFLAGS="-DHAVE_PF $CPPFLAGS"
	;;
*)
	AC_MSG_ERROR([neither Linux NetFilter nor BSD pf detected.])
	;;
esac

AC_OUTPUT(Makefile)

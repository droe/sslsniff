AC_INIT(sslsniff.cpp)
AM_INIT_AUTOMAKE(sslsniff,0.8)
AC_PROG_CC
AC_PROG_CXX
AC_PROG_INSTALL
AC_LANG_CPLUSPLUS
AC_CHECK_HEADER([log4cpp/Category.hh],
	[],
	AC_MSG_ERROR([log4cpp library is not installed.]))
AC_CHECK_HEADER([boost/asio.hpp],
	[],
	AC_MSG_ERROR([libboost1.35-dev library is not installed.]))
AC_CHECK_HEADER([boost/filesystem.hpp],
	[],
	AC_MSG_ERROR([libboost-filesystem1.35-dev library is not installed.]))
AC_CHECK_HEADER([boost/thread.hpp],
	[],
	AC_MSG_ERROR([libboost-thread1.35-dev library is not installed.]))
AC_CHECK_HEADER([openssl/ssl.h],
	[],
	AC_MSG_ERROR([openssl (libssl-dev) library not installed.]))

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

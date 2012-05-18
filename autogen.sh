#!/bin/sh

: ${LIBTOOLIZE=libtoolize}
: ${ACLOCAL=aclocal}
: ${AUTOMAKE=automake}
: ${AUTOCONF=autoconf}

$LIBTOOLIZE &&
$ACLOCAL -I m4 &&
$AUTOMAKE -a &&
$AUTOCONF


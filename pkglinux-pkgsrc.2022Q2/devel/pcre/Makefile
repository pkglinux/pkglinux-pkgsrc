# $NetBSD: Makefile,v 1.93 2022/04/13 11:33:49 nros Exp $

DISTNAME=	pcre-8.45
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcre/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pcre.org/
COMMENT=	Perl Compatible Regular Expressions library
LICENSE=	modified-bsd

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-pcre16
CONFIGURE_ARGS+=	--enable-unicode-properties
CONFIGURE_ARGS+=	--enable-utf8

SUBST_CLASSES+=		rpath
SUBST_STAGE.rpath=	pre-configure
SUBST_MESSAGE.rpath=	Fixing rpath output in pcre-config
SUBST_FILES.rpath=	pcre-config.in
SUBST_VARS.rpath=	COMPILER_RPATH_FLAG

PKGCONFIG_OVERRIDE=	libpcre.pc.in libpcrecpp.pc.in libpcreposix.pc.in
PKGCONFIG_OVERRIDE+=	libpcre16.pc.in

# needs a stacksize of 5.5mb, default is 2mb
TEST_TARGET=		test

.include "../../mk/bsd.pkg.mk"

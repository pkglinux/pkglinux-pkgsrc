# $NetBSD: Makefile,v 1.8 2021/12/03 10:50:56 micha Exp $

DISTNAME=	libcanlock-3.3.0
CATEGORIES=	news
MASTER_SITES=	http://micha.freeshell.org/libcanlock/src/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	micha@NetBSD.org
HOMEPAGE=	http://micha.freeshell.org/libcanlock/
COMMENT=	Standalone RFC 8315 Netnews Cancel-Lock implementation
LICENSE=	mit AND modified-bsd

USE_LANGUAGES+=		c99
USE_LIBTOOL=		yes

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-legacy-api
CONFIGURE_ARGS+=	--enable-pc-files
CONFIGURE_ARGS+=	--with-pkgconfigdir=${PREFIX}/lib/pkgconfig
# The header parsers are available as a separate package news/canlock-hp
CONFIGURE_ARGS+=	--disable-hp

TEST_TARGET=		test

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.19 2021/12/08 16:04:22 adam Exp $

DISTNAME=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
PKGNAME=	cpuminer-2.5.1
PKGREVISION=	3
CATEGORIES=	finance
MASTER_SITES=	${MASTER_SITE_GITHUB:=pooler/}
GITHUB_PROJECT=	cpuminer
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	khorben@defora.org
HOMEPAGE=	https://github.com/pooler/cpuminer/
COMMENT=	CPU miner for Litecoin and Bitcoin
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf autoheader automake

RCD_SCRIPTS=	minerd

CONF_FILES+=	${PREFIX}/share/examples/cpuminer/minerd.conf \
		${PKG_SYSCONFDIR}/minerd.conf

INSTALLATION_DIRS+=	share/examples/cpuminer

pre-configure:
	cd ${WRKSRC} && ${SH} ./autogen.sh

post-install:
	${INSTALL_DATA} ${FILESDIR}/minerd.conf \
		${DESTDIR}${PREFIX}/share/examples/cpuminer

.include "../../textproc/jansson/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.42 2021/12/08 16:06:25 adam Exp $

DISTNAME=		amtterm-1.6
PKGREVISION=		6
CATEGORIES=		sysutils
MASTER_SITES=		http://www.kraxel.org/releases/amtterm/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.kraxel.org/blog/linux/amtterm/
COMMENT=		Active Management Technology (AMT) tools
LICENSE=		gnu-gpl-v2

DEPENDS+=		p5-SOAP-Lite-[0-9]*:../../net/p5-SOAP-Lite

USE_TOOLS+=		gmake pkg-config perl:run tr

MAKE_FILE=		GNUmakefile
MAKE_FLAGS+=		prefix=${PREFIX}

REPLACE_PERL+=		amttool

.include "options.mk"

post-extract:
	${TR} -d '\r' <${WRKSRC}/RedirectionConstants.h >${WRKDIR}/no-dos
	${MV} ${WRKDIR}/no-dos ${WRKSRC}/RedirectionConstants.h

.include "../../mk/bsd.pkg.mk"

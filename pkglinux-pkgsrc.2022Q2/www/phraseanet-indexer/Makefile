# $NetBSD: Makefile,v 1.14 2022/04/18 19:12:19 adam Exp $

.include "../../www/phraseanet/Makefile.common"
PKGNAME=        phraseanet-indexer-${VERS}
PKGREVISION=	9

EXTRACT_ELEMENTS=	${DISTNAME}/bin/src/phraseanet_indexer
WRKSRC=			${WRKDIR}/${DISTNAME}/bin/src/phraseanet_indexer
USE_LANGUAGES=		c c++
USE_TOOLS+=		aclocal autoconf automake
GNU_CONFIGURE=		yes
CFLAGS+=		-I${BUILDLINK_PREFIX.libxml2}/include/libxml2
LIBS.SunOS+=		-lrt -lsocket


pre-configure:
	cd ${WRKSRC} && aclocal && automake -a && autoconf

.include "../../mk/mysql.buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

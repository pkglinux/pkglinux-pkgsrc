# $NetBSD: Makefile,v 1.62 2022/04/18 19:11:16 adam Exp $

DISTNAME=		gimp-fix-ca-3.0.2
PKGREVISION=		4
CATEGORIES=		graphics
MASTER_SITES=		-http://gimper.net/resources/fix-ca.218/download?version=218
EXTRACT_SUFX=		.zip

MAINTAINER=		dsainty@NetBSD.org
HOMEPAGE=		http://kcd.sourceforge.net/fix-ca.php
COMMENT=		GIMP plugin to correct chromatic aberration (CA)
LICENSE=		gnu-gpl-v2

WRKSRC=			${WRKDIR}
NO_CONFIGURE=		yes
INSTALLATION_DIRS=	lib/gimp/2.0/plug-ins

USE_TOOLS+=		pkg-config

LINK_PTHREAD=		${PTHREAD_LDFLAGS} ${PTHREAD_LIBS} -lm

pre-build:
	ln -sf ${BUILDLINK_PREFIX.gimp}/bin/gimptool-2.0 \
		${BUILDLINK_DIR}/bin/gimptool

do-build:
	cd ${WRKDIR} && \
	    LIBS=${LINK_PTHREAD:Q} gimptool --build fix-ca.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fix-ca \
		${DESTDIR}${PREFIX}/lib/gimp/2.0/plug-ins/fix-ca

.include "../../graphics/gimp/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

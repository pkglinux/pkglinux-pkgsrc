# $NetBSD: Makefile,v 1.27 2021/10/08 11:55:42 abs Exp $

DISTNAME=	unix2dos-1.3
PKGREVISION=	1
CATEGORIES=	converters
MASTER_SITES=	# ftp://ftp.guug.org/pub/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Translate ASCII files to/from DOS (cr/lf) and UNIX (lf)

CONFLICTS=	dos2unix-[0-9]*

WRKSRC=		${WRKDIR}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unix2dos ${DESTDIR}${PREFIX}/bin/unix2dos
	${LN} -sf unix2dos ${DESTDIR}${PREFIX}/bin/dos2unix
	${INSTALL_MAN} ${WRKSRC}/man1/unix2dos.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/man1/dos2unix.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"

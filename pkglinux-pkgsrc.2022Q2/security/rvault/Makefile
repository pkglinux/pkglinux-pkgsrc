# $NetBSD: Makefile,v 1.12 2021/12/08 16:06:24 adam Exp $

DISTNAME=	rvault-0.3
PKGREVISION=	6
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=rmind/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/rmind/rvault
COMMENT=	Secure and authenticated store for secrets and small documents
LICENSE=	2-clause-bsd

WRKSRC=		${WRKDIR}/${DISTNAME}/src
NO_CONFIGURE=	yes
USE_TOOLS=	gmake pkg-config

MAKE_ENV+=	LIBSCRYPT_KDF=1

MAKE_ENV+=	DESTDIR=${DESTDIR}
MAKE_ENV+=	BINDIR=${PREFIX}/bin
MAKE_ENV+=	MANDIR=${PREFIX}/${PKGMANDIR}

.include "../../security/scrypt/buildlink3.mk"
.include "../../mk/fuse.buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

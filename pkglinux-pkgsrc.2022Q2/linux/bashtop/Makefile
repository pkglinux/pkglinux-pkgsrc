# $NetBSD$

GITHUB_PROJECT=	bashtop
#GITHUB_TAG=	v0.8.14
#ISTNAME=	v0.8.14
GITHUB_TAG=	v0.9.25
DISTNAME=	v0.9.25
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME:S,^v,,}
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=aristocratos/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	dan@alt.md
HOMEPAGE=	https://github.com/aristocratos/bashtop/
COMMENT=	Linux resource monitor
LICENSE=	apache-2.0

ONLY_FOR_PLATFORM=	Linux-*-*

#WRKSRC=		${WRKDIR}/bashtop-0.8.14
WRKSRC=		${WRKDIR}/bashtop-0.9.25
USE_LANGUAGES=	# none
NO_BUILD=	yes

INSTALLATION_DIRS+=	share/bashtop/themes

do-install:
	cd ${WRKSRC} && DESTDIR=${DESTDIR} PREFIX=${PREFIX} gmake install

#	${INSTALL_SCRIPT} ${WRKSRC}/bashtop ${DESTDIR}${PREFIX}/bin
post-install:
	${CP} -av ${WRKSRC}/themes ${DESTDIR}${PREFIX}/share/bashtop

.include "../../mk/bsd.pkg.mk"

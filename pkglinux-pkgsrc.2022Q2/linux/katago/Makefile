# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	KataGo-1.15.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=lightvector/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/lightvector/KataGo/
COMMENT=	GTP engine and self-play learning in Go game
LICENSE=	mit

GCC_REQD+=	7
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake

WRKSRC=		${WRKDIR}/${DISTNAME}/cpp

NO_CONFIGURE=	yes
USE_CMAKE=	ye
CMAKE_ARGS+=	-DUSE_BACKEND=EIGEN
CMAKE_ARGS+=	-DUSE_AVX2=1 -DNO_GIT_REVISION=1
CMAKE_ARGS+=	-DNO_GIT_REVISION=1

do-build:
	cd ${WRKSRC} ; \
	${CMAKE} . ${CMAKE_ARGS} ; \
	${SET_ENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/bin/
	${CP} -av ${WRKSRC}/katago ${DESTDIR}${PREFIX}/bin/
	${MKDIR} -pv ${DESTDIR}${PREFIX}/share/katago/
	${CP} -av ${FILESDIR}/*.cfg ${DESTDIR}${PREFIX}/share/katago/

.include "../../math/eigen3/buildlink3.mk"
.include "../../archivers/libzip/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.7 2022/04/18 19:10:27 adam Exp $

DISTNAME=	Molsketch-0.7.2-src
PKGNAME=	${DISTNAME:S/-src//:tl}
PKGREVISION=	3
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=molsketch/}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	http://molsketch.sourceforge.net/
COMMENT=	Program for drawing molecular structures
LICENSE=	gnu-gpl-v2

USE_TOOLS=	pkg-config

USE_CMAKE=	yes

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
USE_LANGUAGES=	c c++11

CMAKE_ARGS+=	-DMSK_PREFIX=${PREFIX:Q}
CMAKE_ARGS+=	-DMSK_INSTALL_PREFIX=${PREFIX:Q}
CMAKE_ARGS+=	-DMSK_INSTALL_DOCS=/share/doc/molsketch
CMAKE_ARGS+=	-DMSK_INSTALL_LIBS64=/lib
CMAKE_ARGS+=	-DMSK_INSTALL_LIBS=/lib
CMAKE_ARGS+=	-DMSK_INSTALL_INCLUDES=/include

post-install:
	${RM} -rf ${DESTDIR}${PREFIX}/include/libmolsketch/molsketch_LIB_autogen
	${RM} -rf ${DESTDIR}${PREFIX}/include/libmolsketch/CMakeFiles

TOOL_DEPENDS+=	qt5-qttools-[0-9]*:../../x11/qt5-qttools

.include "../../biology/openbabel/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtsvg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

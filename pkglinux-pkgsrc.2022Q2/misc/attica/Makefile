# $NetBSD: Makefile,v 1.37 2021/12/08 16:02:20 adam Exp $

DISTNAME=	attica-0.4.2
PKGREVISION=	8
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_KDE:=attica/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	https://projects.kde.org/projects/kdesupport/attica
COMMENT=	Qt library that implements the Open Collaboration Services API
LICENSE=	gnu-lgpl-v2.1

# BUILD_MAKE_FLAGS+= VERBOSE=1

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
USE_CMAKE=	yes
CMAKE_ARG_PATH=	..
CMAKE_ARGS+=	-DQT4_BUILD=YES
CONFIGURE_DIRS=	_build

PKGCONFIG_OVERRIDE+=	lib/cmake/libattica.pc.cmake

pre-configure:
	${LN} -sf ${QTDIR}/bin/qmake ${BUILDLINK_DIR}/bin/
	${MKDIR} ${WRKSRC}/_build

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.25 2022/04/18 19:10:04 adam Exp $

DISTNAME=	gpgmepp-15.12.2
PKGREVISION=	23
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_KDE:=applications/15.12.2/src/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	https://projects.kde.org/gpgmepp
COMMENT=	C++ bindings/wrapper for gpgme
LICENSE=	gnu-lgpl-v2.1

BUILD_DEPENDS+=	extra-cmake-modules>=5.19.0:../../devel/extra-cmake-modules

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
CMAKE_ARG_PATH=	..
CONFIGURE_DIRS=	_KDE_build

CMAKE_ARGS+=	-DKDE_INSTALL_USE_QT_SYS_PATHS=ON

pre-configure:
	${MKDIR} ${WRKSRC}/_KDE_build

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

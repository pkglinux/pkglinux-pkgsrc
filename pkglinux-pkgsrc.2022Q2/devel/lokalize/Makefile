# $NetBSD: Makefile,v 1.52 2022/04/18 19:10:53 adam Exp $

DISTNAME=	lokalize-${KAPPSVER}
PKGREVISION=	6
CATEGORIES=	devel

HOMEPAGE=	https://kde.org/applications/development/lokalize/
COMMENT=	Computer-Aided Translation System
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge pkg-config

.include "../../devel/kross/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/hunspell/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

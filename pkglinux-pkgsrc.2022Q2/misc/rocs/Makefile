# $NetBSD: Makefile,v 1.80 2022/04/18 19:11:40 adam Exp $

DISTNAME=	rocs-${KAPPSVER}
PKGREVISION=	9
CATEGORIES=	misc

HOMEPAGE=	https://kde.org/applications/education/rocs/
COMMENT=	KDE graph theory IDE
LICENSE=	gnu-lgpl-v2 AND gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/grantlee-qt5/buildlink3.mk"
.include "../../devel/kdeclarative/buildlink3.mk"
.include "../../devel/ktexteditor/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtwebkit/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.44 2022/04/18 19:12:06 adam Exp $

DISTNAME=	ksystemlog-${KAPPSVER}
PKGREVISION=	6
CATEGORIES=	sysutils

HOMEPAGE=	https://kde.org/applications/system/ksystemlog/
COMMENT=	System log viewer tool
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge pkg-config

.include "../../devel/kio/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

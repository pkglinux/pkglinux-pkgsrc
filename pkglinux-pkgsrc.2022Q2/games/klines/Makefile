# $NetBSD: Makefile,v 1.51 2022/04/18 19:11:07 adam Exp $

DISTNAME=	klines-${KAPPSVER}
PKGREVISION=	6
CATEGORIES=	games

HOMEPAGE=	https://kde.org/applications/games/klines/
COMMENT=	Inspired by well known game of Color Lines
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

.include "../../games/libkdegames/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.14 2022/04/18 19:11:20 adam Exp $

DISTNAME=	kqtquickcharts-${KAPPSVER}
PKGREVISION=	3
CATEGORIES=	graphics

HOMEPAGE=	https://edu.kde.org/
COMMENT=	QtQuick plugin to render beautiful and interactive charts
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

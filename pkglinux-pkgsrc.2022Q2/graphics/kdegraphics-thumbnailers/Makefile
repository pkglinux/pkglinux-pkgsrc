# $NetBSD: Makefile,v 1.62 2022/04/18 19:11:20 adam Exp $

DISTNAME=	kdegraphics-thumbnailers-${KAPPSVER}
PKGREVISION=	6
CATEGORIES=	graphics

HOMEPAGE=	https://kde.org/applications/graphics/
COMMENT=	Graphics file format thumbnailers for KDE
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2 AND gnu-lgpl-v2

.include "../../meta-pkgs/kde/applications.mk"

.include "../../devel/kio/buildlink3.mk"
.include "../../graphics/libkdcraw/buildlink3.mk"
.include "../../graphics/libkexiv2/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.88 2022/04/18 19:09:53 adam Exp $

DISTNAME=	libkexiv2-${KAPPSVER}
PKGREVISION=	3
CATEGORIES=	graphics

HOMEPAGE=	https://kde.org/applications/graphics/
COMMENT=	KDE wrapper around exiv2
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2 AND gnu-lgpl-v2

.include "../../meta-pkgs/kde/applications.mk"

USE_TOOLS+=	pkg-config

.include "../../graphics/exiv2/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

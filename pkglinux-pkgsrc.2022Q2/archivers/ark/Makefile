# $NetBSD: Makefile,v 1.75 2022/04/18 19:10:18 adam Exp $

DISTNAME=	ark-${KAPPSVER}
PKGREVISION=	8
CATEGORIES=	x11

HOMEPAGE=	https://kde.org/applications/utilities/ark/
COMMENT=	Manages various archive formats within the KDE environment
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

.include "../../archivers/bzip2/buildlink3.mk"
BUILDLINK_API_DEPENDS.libarchive+=	libarchive>=3.3.3
.include "../../archivers/libarchive/buildlink3.mk"
.include "../../archivers/libzip/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../devel/kitemmodels/buildlink3.mk"
.include "../../devel/kparts/buildlink3.mk"
.include "../../devel/kpty/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.6 2022/04/25 06:16:59 markd Exp $

DISTNAME=	kmediaplayer-${KF5VER}
CATEGORIES=	multimedia

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	Plugin interface for media player features
LICENSE=	gnu-lgpl-v2.1

.include "../../meta-pkgs/kde/kf5.mk"
MASTER_SITES=	${MASTER_SITE_KDE:=frameworks/${KF5VER:R}/portingAids/}

USE_TOOLS+=	msgmerge

.include "../../devel/kparts/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

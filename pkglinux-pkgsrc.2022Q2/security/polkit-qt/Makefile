# $NetBSD: Makefile,v 1.37 2021/12/08 16:02:35 adam Exp $

DISTNAME=	polkit-qt-1-0.112.0
PKGNAME=	${DISTNAME:S/-qt-1-/-qt-/}
PKGREVISION=	6
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_KDE:=apps/KDE4.x/admin/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://projects.kde.org/projects/kdesupport/polkit-qt-1
COMMENT=	Qt Wrapper around PolicyKit
LICENSE=	gnu-lgpl-v2.1

BUILD_DEPENDS+=	automoc4>=0.9.87:../../devel/automoc4

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
USE_CMAKE=	yes

CMAKE_ARGS+=	-DUSE_QT4=ON

PKGCONFIG_OVERRIDE+=	polkit-qt-1.pc.cmake polkit-qt-agent-1.pc.cmake
PKGCONFIG_OVERRIDE+=	polkit-qt-core-1.pc.cmake polkit-qt-gui-1.pc.cmake polkit-qt-1.pc.cmake

pre-configure:
	${LN} -sf ${QTDIR}/bin/qmake ${BUILDLINK_DIR}/bin/

.include "../../devel/glib2/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.27 2021/12/08 16:07:10 adam Exp $

PYTHON_VERSIONS_INCOMPATIBLE=	27
PKGREVISION= 1
.include "../../meta-pkgs/mate/Makefile.common"

DISTNAME=	mozo-${VERSION:R}.1
CATEGORIES=	x11

COMMENT=	Menu editor for MATE

PY_PATCHPLIST=	yes

.include "../../devel/py-gobject3-common/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/mate-menus/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"

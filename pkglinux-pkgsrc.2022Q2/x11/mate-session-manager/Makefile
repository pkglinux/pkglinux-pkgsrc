# $NetBSD: Makefile,v 1.29 2021/12/08 16:07:10 adam Exp $

PKGREVISION= 1
.include "../../meta-pkgs/mate/Makefile.common"

DISTNAME=	mate-session-manager-${VERSION:R}.3
CATEGORIES=	x11

COMMENT=	MATE session manager

TOOL_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto
TOOL_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt

DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

.include "../../graphics/MesaLib/features.mk"
PLIST_VARS+=	glesv2
.if ${MESALIB_SUPPORTS_GLESv2} == "yes"
PLIST.glesv2=	yes
.endif

.include "options.mk"

.include "../../devel/glib2/schemas.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../devel/libexecinfo/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/xtrans/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.93 2022/04/26 00:25:40 gutteridge Exp $

.include "../../meta-pkgs/xfce4/Makefile.common"

DISTNAME=		xfce4-panel-4.16.4
CATEGORIES=		x11
MASTER_SITES+=		https://archive.xfce.org/src/xfce/xfce4-panel/4.16/

HOMEPAGE=		https://docs.xfce.org/xfce/xfce4-panel/start
COMMENT=		Xfce panel

USE_TOOLS+=		gdbus-codegen

PKGCONFIG_OVERRIDE=	libxfce4panel/libxfce4panel-1.0.pc.in
PTHREAD_AUTO_VARS=	yes

PKG_SYSCONFSUBDIR=	xdg/xfce4/panel
EGDIR=			${XFCE4_EGBASE}/panel

CONF_FILES+=	${EGDIR}/default.xml ${PKG_SYSCONFDIR}/default.xml

.include "../../devel/libwnck3/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/libxfce4ui/buildlink3.mk"
.include "../../x11/xfce4-garcon/buildlink3.mk"
.include "../../x11/xfce4-exo/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

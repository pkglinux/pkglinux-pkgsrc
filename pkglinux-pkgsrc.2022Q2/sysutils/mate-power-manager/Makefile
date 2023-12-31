# $NetBSD: Makefile,v 1.29 2021/12/08 16:06:33 adam Exp $

PKGREVISION= 1
.include "../../meta-pkgs/mate/Makefile.common"

DISTNAME=	mate-power-manager-${VERSION:R}.3
CATEGORIES=	sysutils

COMMENT=	Power manager for MATE

TOOL_DEPENDS+=		libxml2-[0-9]*:../../textproc/libxml2 # for xmllint
# This looks unorthodox, but polkit is required directly for its ITS
# data during the build phase only, in order to generate the file
# "org.mate.power.policy".
TOOL_DEPENDS+=		polkit-[0-9]*:../../security/polkit

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--without-keyring

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/${PKGBASE}

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/autostart
CONF_FILES+=	${PREFIX}/share/examples/mate-power-manager/xdg/autostart/mate-power-manager.desktop \
		${PKG_SYSCONFDIR}/xdg/autostart/mate-power-manager.desktop

.include "../../devel/glib2/schemas.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../sysutils/upower/buildlink3.mk"
.include "../../x11/mate-desktop/buildlink3.mk"
.include "../../x11/mate-panel/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../devel/libexecinfo/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/libunique/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

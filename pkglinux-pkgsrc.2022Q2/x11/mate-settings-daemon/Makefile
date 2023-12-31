# $NetBSD: Makefile,v 1.48 2022/04/18 19:10:16 adam Exp $

PKGREVISION= 3
.include "../../meta-pkgs/mate/Makefile.common"

DISTNAME=	mate-settings-daemon-${VERSION:R}.2
CATEGORIES=	x11

COMMENT=	MATE settings daemon

PKGCONFIG_OVERRIDE+=	data/mate-settings-daemon.pc.in

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

PLIST_VARS+=		rfkill

.if ${OPSYS} != "Linux"
CONFIGURE_ARGS+=	--disable-rfkill
.else
PLIST.rfkill=		yes
.endif

.include "options.mk"

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/mate-settings-daemon

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/autostart
OWN_DIRS+=	${PKG_SYSCONFDIR}/mate-settings-daemon/xrandr
CONF_FILES+=	${PREFIX}/share/examples/mate-settings-daemon/xdg/autostart/mate-settings-daemon.desktop \
		${PKG_SYSCONFDIR}/xdg/autostart/mate-settings-daemon.desktop

.include "../../devel/glib2/schemas.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"

.include "../../x11/libmatekbd/buildlink3.mk"
.include "../../x11/mate-desktop/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../audio/libmatemixer/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/xorgproto/buildlink3.mk"
.include "../../x11/libxklavier/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

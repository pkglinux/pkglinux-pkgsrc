# $NetBSD: Makefile,v 1.15 2022/04/18 19:12:04 adam Exp $

DISTNAME=	gnome-control-center-40.0
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/${PKGBASE}/${PKGVERSION_NOREV:R}/}
PKGREVISION=	5
CATEGORIES=	sysutils gnome
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.gnome.org/GNOME/gnome-control-center
COMMENT=	Interface to configure various aspects of the GNOME desktop
LICENSE=	gnu-gpl-v2

#GCC_REQD+=	9

USE_TOOLS+=	pkg-config msgfmt xgettext
USE_TOOLS+=	gdbus-codegen

MESON_ARGS+=	-Dcheese=false
MESON_ARGS+=	-Dtests=false
MESON_ARGS+=	-Dwayland=false

PYTHON_FOR_BUILD_ONLY=	tool

PKGCONFIG_OVERRIDE_STAGE=	pre-install
PKGCONFIG_OVERRIDE+=		output/panels/keyboard/gnome-keybindings.pc

.include "../../devel/meson/build.mk"
.include "../../devel/gettext-tools/msgfmt-desktop.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../audio/gsound/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../devel/libhandy1/buildlink3.mk"
.include "../../graphics/colord/buildlink3.mk"
.include "../../graphics/colord-gtk/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../inputmethod/ibus/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../net/gnome-online-accounts/buildlink3.mk"
.include "../../net/grilo/buildlink3.mk"
.include "../../net/samba4/buildlink3.mk"
.include "../../print/libcups/buildlink3.mk"
.include "../../security/libsecret/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../sysutils/gnome-settings-daemon/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../sysutils/upower/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gnome-desktop3/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../linux/libseccomp/buildlink3.mk"
.include "../../linux/libwacom/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../linux/libnma/buildlink3.mk"
.include "../../linux/ModemManager/buildlink3.mk"
.include "../../linux/gnome-bluetooth/buildlink3.mk"
.include "../../sysutils/accountsservice/buildlink3.mk"
.include "../../mk/krb5.buildlink3.mk"
.include "../../linux/libevdev/buildlink3.mk"
.include "../../linux/udisks2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.58 2021/12/08 16:02:35 adam Exp $
#

POLICYKIT_GNOME_VER=	0.9.2
DISTNAME=		PolicyKit-gnome-${POLICYKIT_GNOME_VER}
PKGNAME=		policykit-gnome-${POLICYKIT_GNOME_VER}
PKGREVISION=		47
CATEGORIES=		security
MASTER_SITES=		http://hal.freedesktop.org/releases/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://hal.freedesktop.org/
COMMENT=		GNOME dialogs for PolicyKit
LICENSE=		gnu-gpl-v2 AND gnu-lgpl-v2

BUILD_DEFS+=		VARBASE

GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_LIBTOOL=		YES

GCONF_SCHEMAS=		polkit-gnome.schemas

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ARGS+=	--disable-gtk-doc	# gtkdoc-mktmpl

.include "../../devel/GConf/schemas.mk"
.include "../../security/policykit/buildlink3.mk"
BUILDLINK_API_DEPENDS.gnome-doc-utils+=	gnome-doc-utils>=0.20.1
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
#BUILDLINK_API_DEPENDS.gtk-doc+=	gtk-doc>=1.20
#.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"

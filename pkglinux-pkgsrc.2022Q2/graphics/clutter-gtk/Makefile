# $NetBSD: Makefile,v 1.50 2021/12/08 16:02:07 adam Exp $

DISTNAME=	clutter-gtk-1.8.4
PKGREVISION=	4
CATEGORIES=	graphics gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/clutter-gtk/${PKGVERSION:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://wiki.gnome.org/Projects/Clutter
COMMENT=	GTK+ Integration library for Clutter
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

USE_TOOLS+=	pkg-config
USE_TOOLS+=	msgfmt msgmerge xgettext

USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	clutter-gtk.pc.in

.include "options.mk"

BUILDLINK_API_DEPENDS.gtk3+=	gtk3+>=3.6.0
.include "../../x11/gtk3/buildlink3.mk"
BUILDLINK_API_DEPENDS.clutter+=	clutter>=1.18.0
.include "../../graphics/clutter/buildlink3.mk"
.if !empty(PKG_BUILD_OPTIONS.clutter:Mx11)
.else
PKG_FAIL_REASON+=	Require Clutter with X11 backend
.endif
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.95 2022/04/18 19:12:21 adam Exp $
#

DISTNAME=	gnome-themes-extras-2.22.0
PKGREVISION=	54
CATEGORIES=	x11 gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-themes-extras/2.22/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnome.org/
COMMENT=	Collection of metathemes for the GNOME desktop environment

.include "../../mk/bsd.prefs.mk"

EXTRACT_USING=		bsdtar

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config

BUILDLINK_TRANSFORM+=	rm:-DG_DISABLE_DEPRECATED
BUILDLINK_TRANSFORM+=	rm:-DGTK_DISABLE_DEPRECATED

BUILDLINK_API_DEPENDS.librsvg+=	librsvg>=2.12.6

.include "../../graphics/gnome-icon-theme/buildlink3.mk"
.include "../../graphics/icon-naming-utils/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk2-engines/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

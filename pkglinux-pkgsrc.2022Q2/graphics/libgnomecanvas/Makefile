# $NetBSD: Makefile,v 1.93 2022/04/18 19:09:52 adam Exp $
#

DISTNAME=		libgnomecanvas-2.30.3
PKGREVISION=		33
CATEGORIES=		graphics gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomecanvas/2.30/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.gnome.org/
COMMENT=		GNOME Canvas library

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake msgfmt pkg-config intltool
USE_LIBTOOL=		yes

# XXX not sure whether it is useful, just to keep status quo
CONFIGURE_ARGS+=	--enable-glade

PKGCONFIG_OVERRIDE=	libgnomecanvas/libgnomecanvas-2.0.pc.in

BUILDLINK_API_DEPENDS.gtk2=	gtk2+>=2.14.0

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

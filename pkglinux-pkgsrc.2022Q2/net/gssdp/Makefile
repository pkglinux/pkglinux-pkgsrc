# $NetBSD: Makefile,v 1.98 2022/06/07 20:38:06 wiz Exp $

DISTNAME=	gssdp-1.0.3
PKGREVISION=	20
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gssdp/1.0/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gupnp.org/
COMMENT=	Simple Service Discovery Protocol library and device sniffer (1.0 branch)
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-gtk
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake

PKGCONFIG_OVERRIDE+=	gssdp-1.0.pc.in

.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_DEPMETHOD.gobject-introspection=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

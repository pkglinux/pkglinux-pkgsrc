# $NetBSD: Makefile,v 1.43 2021/12/08 16:02:26 adam Exp $
#

DISTNAME=		gnet-2.0.8
PKGREVISION=		6
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnet/2.0/}

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=		https://live.gnome.org/GNetLibrary
COMMENT=		Simple network library

USE_TOOLS+=		pkg-config
USE_LIBTOOL=		YES
PKGCONFIG_OVERRIDE=	gnet-2.0.pc.in
GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc
TEST_TARGET=		check

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

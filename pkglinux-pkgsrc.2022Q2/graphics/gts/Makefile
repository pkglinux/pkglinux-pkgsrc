# $NetBSD: Makefile,v 1.6 2021/12/08 16:02:10 adam Exp $

DISTNAME=	gts-0.7.6
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gts/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gts.sourceforge.net/
COMMENT=	GNU Triangulated Surface Library
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=		yes
USE_TOOLS+=		gmake pkg-config
GNU_CONFIGURE=		yes
# it is not necessary to configure libtool
CONFIGURE_ARGS+=	--with-tags=""
PKGCONFIG_OVERRIDE+=	gts.pc.in

CPPFLAGS+=	-I${BUILDLINK_PREFIX.netpbm}/include/netpbm

.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/netpbm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.19 2022/04/18 19:11:44 adam Exp $
#

DISTNAME=	gnonlin-0.10.17
PKGNAME=	gst-gnonlin-0.10.17
PKGREVISION=	11
CATEGORIES=	multimedia
MASTER_SITES=	https://gstreamer.freedesktop.org/src/gnonlin/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gstreamer.freedesktop.org/modules/gnonlin.html
COMMENT=	Non-linear editing components for gstreamer

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

.include "../../devel/glib2/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

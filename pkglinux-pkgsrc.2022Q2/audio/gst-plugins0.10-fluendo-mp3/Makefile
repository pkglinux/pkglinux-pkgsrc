# $NetBSD: Makefile,v 1.22 2022/04/18 19:10:21 adam Exp $

DISTNAME=		gst-fluendo-mp3-0.10.32
PKGREVISION=		6
CATEGORIES=		audio
MASTER_SITES=		http://core.fluendo.com/gstreamer/src/gst-fluendo-mp3/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=		http://www.fluendo.com/shop/product/fluendo-mp3-decoder/
COMMENT=		MP3 decoder for gstreamer
LICENSE=		mit

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../devel/liboil/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

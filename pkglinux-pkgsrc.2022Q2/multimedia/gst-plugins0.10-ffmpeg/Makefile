# $NetBSD: Makefile,v 1.48 2022/04/18 19:11:44 adam Exp $
#

DISTNAME=	gst-ffmpeg-0.10.13
PKGREVISION=	27
CATEGORIES=	multimedia
MASTER_SITES=	https://gstreamer.freedesktop.org/src/gst-ffmpeg/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gstreamer.freedesktop.org/src/gst-ffmpeg/
COMMENT=	GStreamer ffmpeg plugin
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake perl
PKGSRC_MAKE_ENV+=	PERL=${PERL5:Q}

.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/orc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

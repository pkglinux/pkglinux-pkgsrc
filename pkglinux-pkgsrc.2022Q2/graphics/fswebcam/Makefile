# $NetBSD: Makefile,v 1.4 2022/05/05 08:29:37 nia Exp $

DISTNAME=	fswebcam-20200725
CATEGORIES=	graphics
MASTER_SITES=	https://www.sanslogic.co.uk/fswebcam/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.sanslogic.co.uk/fswebcam/
COMMENT=	Simple app to capture images from a webcam
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--disable-v4l1

.include "../../mk/bsd.prefs.mk"

pre-configure:
.if exists(/usr/include/sys/videoio.h)
# Older NetBSD versions need a newer videoio.h.
.  if ${OPSYS} == "NetBSD" && ${OPSYS_VERSION} < 099970
	${CP} ${.CURDIR}/../../graphics/libv4l/files/videoio.h \
		${WRKSRC}/videodev2.h
.  else
	${CP} /usr/include/sys/videoio.h ${WRKSRC}/videodev2.h
.  endif
.endif

.include "../../graphics/gd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

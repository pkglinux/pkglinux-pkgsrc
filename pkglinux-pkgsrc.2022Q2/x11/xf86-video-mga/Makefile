# $NetBSD: Makefile,v 1.29 2022/04/10 08:53:21 nia Exp $

#DISTNAME=	xf86-video-mga-2.0.0
DISTNAME=	xf86-video-mga-2.0.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XORG:=driver/}
#EXTRACT_SUFX=	.tar.bz2
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://xorg.freedesktop.org/
COMMENT=	Modular Xorg Matrox video driver

CONFIGURE_ARGS+=	--enable-dri

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

RELRO_SUPPORTED=	partial

CONFIGURE_ENV.SunOS+=	DRIVER_MAN_SUFFIX=4

X11_DRV_NAME=	mga
.include "../../meta-pkgs/modular-xorg/avoid-duplicate.mk"
.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../x11/xorgproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

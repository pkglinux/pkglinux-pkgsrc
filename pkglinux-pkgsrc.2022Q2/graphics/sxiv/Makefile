# $NetBSD: Makefile,v 1.12 2022/04/13 09:35:48 pin Exp $
#

DISTNAME=	sxiv-26
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=muennich/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	leot@NetBSD.org
HOMEPAGE=	https://github.com/muennich/sxiv
COMMENT=	Simple (or small or suckless) X Image Viewer
LICENSE=	gnu-gpl-v2

MAKE_FLAGS+=	PREFIX=${PREFIX} MANPREFIX=${PREFIX}/${PKGMANDIR}
MAKE_FLAGS+=	AUTORELOAD=nop

USE_LANGUAGES=	c99

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../graphics/giflib/buildlink3.mk"
.include "../../graphics/imlib2/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

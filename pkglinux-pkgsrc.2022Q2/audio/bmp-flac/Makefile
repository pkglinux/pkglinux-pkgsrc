# $NetBSD: Makefile,v 1.36 2021/12/08 16:03:06 adam Exp $
#

DISTNAME=	flac-1.1.3
PKGNAME=	bmp-${DISTNAME}
PKGREVISION=	32
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://flac.sourceforge.net/
COMMENT=	FLAC BMP plugin

USE_TOOLS+=		gmake pkg-config
GNU_CONFIGURE=		yes

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
SHLIBTOOL_OVERRIDE=	libtool-disable-static

XMMS_WRKSRC=	${WRKSRC}/src/plugin_xmms

SUBST_CLASSES+=		bmph
SUBST_STAGE.bmph=	post-configure
SUBST_MESSAGE.bmph=	Fixing xmms headers
SUBST_FILES.bmph=	src/plugin_xmms/*.c
SUBST_SED.bmph=		-e 's,include <xmms/,include <bmp/,g'

BUILD_DIRS=	src/libFLAC
BUILD_DIRS+=	src/plugin_common
BUILD_DIRS+=	src/share
BUILD_DIRS+=	src/plugin_xmms
INSTALL_DIRS=	src/plugin_xmms

.include "../../mk/compiler.mk"

# SunPro does not support __inline
.if !empty(PKGSRC_COMPILER:Msunpro)
CFLAGS+=	-D__inline=inline
.endif

BUILDLINK_API_DEPENDS.flac+=	flac>=1.1.3nb1
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/bmp/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"

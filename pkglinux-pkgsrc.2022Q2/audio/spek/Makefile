# $NetBSD: Makefile,v 1.27 2021/12/08 16:03:20 adam Exp $

DISTNAME=	spek-0.8.2
PKGREVISION=	21
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GITHUB:=alexkay/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://spek.cc/
COMMENT=	Acoustic Spectrum Analyzer
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake intltool xgettext msgmerge msgfmt pkg-config
MAKE_FLAGS+=	DATADIRNAME=${PKGLOCALEDIR}

GNU_CONFIGURE_WX_VERSION=	no

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../multimedia/ffmpeg4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/wxGTK30/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

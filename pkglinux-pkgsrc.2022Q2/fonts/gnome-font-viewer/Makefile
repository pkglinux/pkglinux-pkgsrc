# $NetBSD: Makefile,v 1.10 2021/12/08 16:04:23 adam Exp $

DISTNAME=	gnome-font-viewer-3.27.0
PKGREVISION=	9
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_GITHUB:=GNOME/}
GITHUB_PROJECT=	gnome-font-viewer
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/GNOME/gnome-font-viewer
COMMENT=	Font viewer for GNOME 3 desktop environment
LICENSE=	gnu-gpl-v2

USE_LANGUAGES+=	c
USE_TOOLS+=	msgfmt pkg-config

MAKE_ENV+=	WRKSRC=${WRKSRC}
MAKE_ENV+=	PKGVERSION_NOREV=${PKGVERSION_NOREV}
MAKE_ENV+=	PKGLOCALEDIR=${PKGLOCALEDIR}

.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../x11/gnome-desktop3/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

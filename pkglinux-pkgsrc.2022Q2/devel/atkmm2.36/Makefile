# $NetBSD: Makefile,v 1.2 2021/12/08 16:01:51 adam Exp $

DISTNAME=	atkmm-2.36.1
PKGNAME=	${DISTNAME:S/atkmm/atkmm2.36/}
PKGREVISION=	1
CATEGORIES=	devel gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/atkmm/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz
EXTRACT_USING=	bsdtar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gtkmm.org/
COMMENT=	C++ bindings for atk (2.36 API)
LICENSE=	gnu-lgpl-v2.1 AND gnu-gpl-v2

USE_LANGUAGES=		c c++11
USE_TOOLS+=		perl pkg-config
# TODO: update
PKGCONFIG_OVERRIDE+=	atk/atkmm.pc.in

.include "../../devel/atk/buildlink3.mk"
.include "../../devel/glibmm2.68/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.2 2021/12/08 16:02:08 adam Exp $

DISTNAME=	colord-gtk-0.2.0
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	https://www.freedesktop.org/software/colord/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/colord/
COMMENT=	Manage color profiles to accurately color input/output devices
LICENSE=	gnu-gpl-v3

USE_TOOLS+=	pkg-config xgettext

# Needs docbook-xsl-ns
MESON_ARGS+=	-Ddocs=false
MESON_ARGS+=	-Dman=false

PYTHON_FOR_BUILD_ONLY=	tool

PKGCONFIG_OVERRIDE_STAGE=	pre-install
PKGCONFIG_OVERRIDE+=		output/meson-private/colord-gtk.pc

.include "../../devel/meson/build.mk"
.include "../../graphics/colord/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

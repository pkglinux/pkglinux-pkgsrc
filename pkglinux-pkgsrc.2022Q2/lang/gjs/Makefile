# $NetBSD: Makefile,v 1.13 2022/04/18 19:09:55 adam Exp $

DISTNAME=	gjs-1.68.4
#DISTNAME=	gjs-1.68.0
#DISTNAME=	gjs-1.68.6
#DISTNAME=	gjs-1.69.2
PKGREVISION=	1
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gjs/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.gnome.org/GNOME/gjs
COMMENT=	Javascript binding for GNOME based on Spidermonkey
LICENSE=	mit

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

# "ERROR: Only GCC 7.1 or newer is supported" from lang/mozjs78
GCC_REQD+=	7

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output/gjs@sha:${WRKSRC}/output/gjs-jsapi@sta:${WRKSRC}/output/gjs-console@exe
MESON_ARGS+=	-Dinstalled_tests=false
MESON_ARGS+=	-Dprofiler=disabled

PYTHON_FOR_BUILD_ONLY=	tool

PKGCONFIG_OVERRIDE+=		output/meson-private/gjs-1.0.pc
PKGCONFIG_OVERRIDE_STAGE=	post-configure

CHECK_PORTABILITY_SKIP+=	tools/run_iwyu.sh

.include "../../devel/meson/build.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.include "../../lang/mozjs78/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk4/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/readline.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.8 2021/12/08 16:02:23 adam Exp $

DISTNAME=	gst-transcoder-1.16.0
PKGNAME=	${DISTNAME:S/^gst/gst-plugins1/1}
PKGREVISION=	3
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=pitivi/}
GITHUB_PROJECT=	gst-transcoder

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/pitivi/gst-transcoder
COMMENT=	Open source multimedia framework - transcoding plugin
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	pkg-config

SUBST_CLASSES+=		py
SUBST_STAGE.py=		pre-configure
SUBST_MESSAGE.py=	Setting the Python executable name.
SUBST_FILES.py+=	meson.build
SUBST_VARS.py+=		PYVERSSUFFIX

# workaround for build failure
# https://gitlab.gnome.org/GNOME/json-glib/issues/35
MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output

MESON_ARGS+=	-Ddisable_doc=true

PYTHON_FOR_BUILD_ONLY=	tool

.include "../../devel/meson/build.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

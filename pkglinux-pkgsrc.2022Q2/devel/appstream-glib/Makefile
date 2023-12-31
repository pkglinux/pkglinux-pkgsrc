# $NetBSD: Makefile,v 1.13 2022/04/18 19:10:47 adam Exp $

DISTNAME=	appstream-glib-0.7.18
PKGREVISION=	4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=hughsie/}
GITHUB_TAG=	${DISTNAME:S/-/_/g:S/./_/g}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/hughsie/appstream-glib/
COMMENT=	GObjects and helper methods for AppStream metadata
LICENSE=	gnu-lgpl-v2.1

TOOL_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

USE_TOOLS+=		pkg-config msgfmt xgettext
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

MESON_ARGS+=		-Drpm=false

PKGCONFIG_OVERRIDE+=	libappstream-glib/appstream-glib.pc.in

PYTHON_FOR_BUILD_ONLY=	tool

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/gperf/buildlink3.mk"
.include "../../devel/libuuid/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../textproc/libstemmer/buildlink3.mk"
.include "../../textproc/libyaml/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

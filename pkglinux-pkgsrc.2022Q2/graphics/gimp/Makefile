# $NetBSD: Makefile,v 1.360 2022/05/04 21:05:42 wiz Exp $

DISTNAME=	gimp-2.10.30
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	https://download.gimp.org/pub/gimp/v${PKGVERSION_NOREV:R}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://www.gimp.org/
COMMENT=	The GNU image manipulation program
LICENSE=	gnu-lgpl-v3 AND gnu-gpl-v3

BUILD_DEPENDS+=	vera-ttf-[0-9]*:../../fonts/vera-ttf
TOOL_DEPENDS+=	gettext-tools>=0.19:../../devel/gettext-tools
TOOL_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt
DEPENDS+=	glib-networking>=2.36.2:../../net/glib-networking
CONFLICTS+=	gimp<=1.2.3

USE_LANGUAGES+=		c c++14
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

USE_TOOLS+=		gmake pkg-config perl
USE_TOOLS+=		intltool msgfmt msgmerge xgettext
USE_TOOLS+=		gdbus-codegen

GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--disable-alsatest
CONFIGURE_ARGS+=	--disable-glibtest
CONFIGURE_ARGS+=	--disable-gtktest
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--without-linux-input
CONFIGURE_ARGS+=	--without-gs

PKG_SYSCONFSUBDIR=	gimp/2.0
PKGCONFIG_OVERRIDE=	gimp.pc.in
UNLIMIT_RESOURCES+=	datasize

# GCC 4.x C++14 support is not new enough.
GCC_REQD+=	5

.include "../../mk/bsd.prefs.mk"

EGDIR=			${PREFIX}/share/examples/gimp-2.0
.for f in controllerrc gimprc gtkrc menurc sessionrc templaterc unitrc
CONF_FILES+=		${EGDIR}/${f} ${PKG_SYSCONFDIR}/${f}
.endfor

# checking for xgettext version (>= 0.19)... no
_TOOLS_USE_PKGSRC.xgettext=	yes

# Ensure we export symbols in the linked shared object.
LDFLAGS+=		${EXPORT_SYMBOLS_LDFLAGS}

PLIST_VARS+=	remote
.if ${OPSYS} == "Darwin"
PLIST_SUBST+=	GIMP_DEBUG_TOOL_DIR="bin"
.else
PLIST_SUBST+=	GIMP_DEBUG_TOOL_DIR="libexec"
.endif

pre-configure:
	${LN} -s mypaint-brushes-2.0.pc \
	${BUILDLINK_DIR}/share/pkgconfig/mypaint-brushes-1.0.pc

.include "options.mk"
.include "../../archivers/xz/buildlink3.mk"
BUILDLINK_API_DEPENDS.freetype2+=	freetype2>=2.8.1
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
BUILDLINK_API_DEPENDS.fontconfig+=	fontconfig>=2.12.4
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
BUILDLINK_API_DEPENDS.babl+=		babl>=0.1.78
.include "../../graphics/babl/buildlink3.mk"
BUILDLINK_API_DEPENDS.gegl+=		gegl>=0.4.32
.include "../../graphics/gegl/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/gexiv2/buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../graphics/libheif/buildlink3.mk"
.include "../../graphics/libmypaint/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../graphics/mypaint-brushes/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/openjpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../graphics/libwmf/buildlink3.mk"
.include "../../print/poppler-data/buildlink3.mk"
.include "../../print/poppler-glib/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.if ${PKG_BUILD_OPTIONS.gtk2:Mx11}
PLIST.remote=	yes
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-xmc
CONFIGURE_ARGS+=	--without-libxpm
.endif
.if ${PKG_BUILD_OPTIONS.gtk2:Mquartz}
.include "../../x11/gtk-mac-integration/buildlink3.mk"
.endif
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

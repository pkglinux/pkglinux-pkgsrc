# $NetBSD: Makefile,v 1.8 2022/06/07 18:48:34 adam Exp $

DISTNAME=	wxWidgets-3.1.7
PKGNAME=	${DISTNAME:S/wxWidgets/wxGTK31/}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=wxWidgets/}
GITHUB_PROJECT=	wxWidgets
GITHUB_RELEASE=	v${PKGVERSION_NOREV}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	dbj@NetBSD.org
HOMEPAGE=	https://www.wxwidgets.org/
COMMENT=	Cross-platform wxWidgets GUI library (3.1 development branch)
# LGPLv2 with additional permission; http://opensource.org/licenses/wxwindows
LICENSE=	gnu-lgpl-v2

USE_TOOLS+=		pkg-config msgfmt
USE_LANGUAGES=		c c++
GNU_CONFIGURE=		YES
USE_GNU_CONFIGURE_HOST=	no
CONFIGURE_ARGS+=	--with-libpng=sys
CONFIGURE_ARGS+=	--with-libjpeg=sys
CONFIGURE_ARGS+=	--with-libtiff=sys
CONFIGURE_ARGS+=	--with-opengl
CONFIGURE_ARGS+=	--with-expat=sys
CONFIGURE_ARGS+=	--with-zlib=sys
CONFIGURE_ARGS+=	--with-regex=builtin
CONFIGURE_ARGS+=	--enable-mediactrl
# wxregexu symbols are not exported properly as of 3.0.1
# http://trac.wxwidgets.org/ticket/16571
CONFIGURE_ARGS+=	--disable-visibility
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec/wx-3.1
CONFIGURE_ARGS+=	--datarootdir=${PREFIX}/share/wx-3.1

DOCDIR=			share/wx-3.1/doc/wxWidgets

INSTALL_MAKE_FLAGS+=	LN_S="ln -fs"

INSTALLATION_DIRS+=	${DOCDIR}
INSTALLATION_DIRS+=	bin

REPLACE_SH=		wx-config.in wx-config-inplace.in

SUBST_CLASSES+=			fix-paths
SUBST_STAGE.fix-paths=		pre-configure
SUBST_MESSAGE.fix-paths=	Fixing absolute paths.
SUBST_FILES.fix-paths=		configure
SUBST_SED.fix-paths=		-e 's,/usr/pkg/include,${PREFIX}/include,g'
SUBST_VARS.fix-paths=		PREFIX

.include "../../mk/bsd.prefs.mk"

PLIST_SRC+=		${PLIST_SRC_DFLT}

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--with-osx_cocoa
CONFIGURE_ARGS+=	--without-macosx-sdk
CONFIGURE_ARGS+=	--without-macosx-version-min
CPPFLAGS+=		-D__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES=1
.else
CONFIGURE_ARGS+=	--with-gtk=3
PLIST_SRC+=		PLIST.gtk3
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.endif

CONFIGURE_ARGS.SunOS+=	--disable-xlocale

post-configure:
	${ECHO} 'install_qadll: install_xmldll' >> ${WRKSRC}/Makefile

post-build:
	set -e; cd ${WRKSRC}/locale; \
	for lang in *.po; do \
		[ "$${lang}" = "wxstd.po" ] && continue; \
		${TOOLS_PATH.msgfmt} -c -o "$${lang%.po}.mo" "$${lang}"; \
	done

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/licence.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/lgpl.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/changes.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/readme.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	# Create symlinks for now.  Eventually we may want to use ALTERNATIVES
	${LN} -sf ../libexec/wx-3.1/wxrc-3.1 ${DESTDIR}${PREFIX}/bin/wxrc-3.1
	${LN} -sf ../libexec/wx-3.1/wx-config ${DESTDIR}${PREFIX}/bin/wx-config-3.1

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
# XXX: built-in version gets configured
#.include "../../devel/pcre2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.if ${OPSYS} != "Darwin"
.include "../../graphics/glu/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.endif
.include "../../mk/bsd.pkg.mk"

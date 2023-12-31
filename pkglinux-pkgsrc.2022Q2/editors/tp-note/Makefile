# $NetBSD: Makefile,v 1.6 2022/06/18 15:31:02 pin Exp $

DISTNAME=	tp-note-1.17.2
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_GITLAB:=getreu/}
#GITLAB_RELEASE=	v${PKGVERSION_NOREV}
GITLAB_TAG=	29735452d701131ce16007415f1433c01b7e29f1

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://blog.getreu.net/projects/tp-note/
COMMENT=	Minimalistic note taking and template system
LICENSE=	mit OR apache-2.0

BUILD_DEPENDS+=		${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

.include "cargo-depends.mk"

WRKSRC=		${WRKDIR}/tp-note-29735452d701131ce16007415f1433c01b7e29f1

USE_TOOLS+=	pkg-config

PYTHON_VERSIONS_INCOMPATIBLE=	27
PYTHON_FOR_BUILD_ONLY=		tool

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 share/pixmaps

RUSTFLAGS+=	-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.libxcb}/lib
RUSTFLAGS+=	-C link-arg=-L${BUILDLINK_PREFIX.libxcb}/lib
RUSTFLAGS+=	-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.gtk3}/lib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/tpnote \
		${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/build/man/man1/tpnote.1.gz \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/assets/tpnote.svg  \
		${DESTDIR}${PREFIX}/share/pixmaps

.include "../../lang/rust/cargo.mk"
.include "../../lang/python/tool.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../devel/atk/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.include "../../x11/libxcb/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

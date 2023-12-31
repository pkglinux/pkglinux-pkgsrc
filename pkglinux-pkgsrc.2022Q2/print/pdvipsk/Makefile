# $NetBSD: Makefile,v 1.6 2022/04/24 00:02:49 tnn Exp $

DISTNAME=	texlive-20091011-source
PKGNAME=	pdvipsk-5.98pl1.7b
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=systems/texlive/Source/}
DISTFILES=	texlive-20091011-source.tar.xz \
		dvipsk-ja_5.98+p1.7b.orig-jpatch.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.ascii.co.jp/pb/ptex/
COMMENT=	DVI-to-PostScript translator with Japanese support

CONFLICTS=	ja-ptex-bin-[0-9]*
DEPENDS+=	dvipsk>=5.98:../../print/dvipsk

SITES.dvipsk-ja_5.98+p1.7b.orig-jpatch.tar.gz=	\
		${MASTER_SITE_DEBIAN:=pool/main/d/dvipsk-ja/}

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	patch
WRKSRC=		${WRKDIR}/${DISTNAME}/texk/dvipsk

CONFIG_GUESS_OVERRIDE+=	${WRKDIR}/${DISTNAME}/build-aux/config.guess
CONFIG_SUB_OVERRIDE+=	${WRKDIR}/${DISTNAME}/build-aux/config.sub

CFLAGS+=	-I${BUILDLINK_PREFIX.kpathsea}/lib

CONFIGURE_ARGS+=	--with-system-kpathsea \
			--with-kpathsea-includes=${BUILDLINK_PREFIX.kpathsea}/include \
			--with-kpathsea-libdir=${BUILDLINK_PREFIX.kpathsea}/lib

INSTALLATION_DIRS+=	bin

.include "../../print/kpathsea/buildlink3.mk"

### NetBSD's patch(1) fails in patching dvips.info.
###
TOOL_DEPENDS+=	patch-[0-9]*:../../devel/patch
pre-patch:
	${PREFIX}/bin/gpatch -d ${WRKSRC} -p1 -s \
		< ${WRKDIR}/dvipsk-5.98-p1.7b-tl2009.diff

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pdvips ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.7 2022/05/14 22:25:39 dholland Exp $
#

DISTNAME=	texdrive
PKGNAME=	texdrive-0.0.20081126.171834
PKGREVISION=	4
CATEGORIES=	math
MASTER_SITES=	http://www.djcbsoftware.nl/code/texdrive/
EXTRACT_SUFX=	.el

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.djcbsoftware.nl/code/texdrive/
COMMENT=	Emacs mode for creating inline formulae for HTML

DEPENDS+=	tex-amsfonts-[0-9]*:../../fonts/tex-amsfonts
DEPENDS+=	tex-amsmath-[0-9]*:../../print/tex-amsmath
DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick

DIST_SUBDIR=	${PKGNAME_NOREV}
WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# none
MESSAGE_SUBST+=	LISPDIR=${EMACS_LISPPREFIX:Q}

do-build:
	cd ${WRKSRC} && ${EMACS_BIN} -batch -f batch-byte-compile texdrive.el

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EMACS_LISPPREFIX}
	${INSTALL_DATA} ${WRKSRC}/texdrive.* ${DESTDIR}${EMACS_LISPPREFIX}

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

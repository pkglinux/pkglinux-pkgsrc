# $NetBSD: Makefile,v 1.8 2022/05/14 22:25:33 dholland Exp $
#

DISTNAME=	cmake-mode
PKGNAME=	cmake-mode-20080606
PKGREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	http://www.cmake.org/CMakeDocs/
EXTRACT_SUFX=	.el

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cmake.org/
COMMENT=	Emacs mode for CMake syntax highlighting and indentation

DIST_SUBDIR=	${PKGNAME_NOREV}
WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# none
MESSAGE_SUBST+=	LISPDIR=${EMACS_LISPPREFIX:Q}

do-build:
	cd ${WRKSRC} && ${EMACS_BIN} -batch -f batch-byte-compile cmake-mode.el

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EMACS_LISPPREFIX}
	${INSTALL_DATA} ${WRKSRC}/cmake-mode.* ${DESTDIR}${EMACS_LISPPREFIX}

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

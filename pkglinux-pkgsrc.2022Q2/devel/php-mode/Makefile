# $NetBSD: Makefile,v 1.9 2022/05/14 22:25:35 dholland Exp $
#

DISTNAME=	php-mode-1.13.1
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=php-mode/}
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceforge.net/projects/php-mode/
COMMENT=	PHP editing mode for Emacs
LICENSE=	gnu-gpl-v3

NO_CONFIGURE=		yes

do-build:
	cd ${WRKSRC} && ${EMACS_BIN} -batch -f batch-byte-compile php-mode.el

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EMACS_LISPPREFIX}/php-mode
	${INSTALL_DATA} ${WRKSRC}/php-mode.e* \
		${DESTDIR}${EMACS_LISPPREFIX}/php-mode

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

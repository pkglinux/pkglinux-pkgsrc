# $NetBSD: Makefile,v 1.6 2022/05/14 22:25:37 dholland Exp $

DISTNAME=	javascript-2.2.1
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME:S/-/-mode-/}
PKGREVISION=	2
CATEGORIES=	devel editors
MASTER_SITES=	#
DISTFILES=	#

MAINTAINER=	cheusov@NetBSD.org
#HOMEPAGE=	http://www.brgeight.se/
COMMENT=	Javascript major mode for Emacs

INSTALLATION_DIRS=	${EMACS_LISPPREFIX}

NO_CONFIGURE=		yes

LICENSE=		gnu-gpl-v2

SRC=			javascript.el

WRKSRC=			${WRKDIR}

do-build:
	set -e; \
	cd ${WRKDIR}; cp ${.CURDIR}/files/${SRC} .; \
	${EMACS_BIN} --no-init-file --no-site-file -batch \
		-f batch-byte-compile ${SRC}

do-install:
	set -e; \
	cd ${WRKDIR}; \
	${INSTALL_DATA} ${SRC} ${SRC:.el=.elc} \
		${DESTDIR}${EMACS_LISPPREFIX}

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

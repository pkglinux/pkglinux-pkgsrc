# $NetBSD: Makefile,v 1.22 2022/05/14 22:25:35 dholland Exp $

DISTNAME=	sml-mode-3.9.5
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel editors
MASTER_SITES=	# ftp://flint.cs.yale.edu/pub/monnier/sml-mode/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Emacs mode for editing Standard ML source code

BUILD_TARGET=	default

INFO_FILES=	yes

INSTALLATION_DIRS=	${EMACS_INFOPREFIX} ${EMACS_LISPPREFIX}/sml-mode

do-install:
	cd ${WRKSRC} && ${INSTALL_DATA} *.el *.elc README NEWS TODO \
		ChangeLog ${DESTDIR}${EMACS_LISPPREFIX}/sml-mode
	${INSTALL_DATA} ${WRKSRC}/sml-mode.info ${DESTDIR}${EMACS_INFOPREFIX}

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

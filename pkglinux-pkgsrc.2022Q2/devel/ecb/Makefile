# $NetBSD: Makefile,v 1.3 2022/05/14 22:25:35 dholland Exp $

DISTNAME=	ecb-2.50
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GITHUB:=ecb-home/}
GITHUB_TAG=	1330a44cf3c171781083b0b926ab7622f64e6e81

MAINTAINER=	pho@cielonegro.org
HOMEPAGE=	https://github.com/ecb-home/ecb
COMMENT=	Emacs Code Browser
LICENSE=	gnu-gpl-v2

USE_TOOLS=	find gmake makeinfo tar
INFO_FILES=	yes

MAKE_FLAGS+=		EMACS=${EMACS_BIN}
MAKE_FLAGS+=		SHELL=${SH:Q}
EMACS_MODULES=		base
EMACS_BUILDLINK=	yes

INSTALLATION_DIRS+=	\
	${PKGINFODIR} \
	${EMACS_LISPPREFIX}/${PKGBASE}

do-install:
	${INSTALL_DATA} ${WRKSRC}/*.el  ${DESTDIR}${EMACS_LISPPREFIX}/${PKGBASE}
	${INSTALL_DATA} ${WRKSRC}/*.elc ${DESTDIR}${EMACS_LISPPREFIX}/${PKGBASE}
	${INSTALL_DATA} ${WRKSRC}/info-help/ecb.info* ${DESTDIR}${PREFIX}/${PKGINFODIR}
	${TAR} -cf - -C ${WRKSRC} ecb-images | \
		${TAR} -xf - -C ${DESTDIR}${EMACS_LISPPREFIX}/${PKGBASE}

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

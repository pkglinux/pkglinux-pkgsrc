# $NetBSD: Makefile,v 1.15 2022/05/14 22:25:37 dholland Exp $

DISTNAME=	artist-1.2.6
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	http://www.lysator.liu.se/~tab/artist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.lysator.liu.se/~tab/artist/
COMMENT=	Elisp drawing package with mouse and keyboard support
LICENSE=	gnu-gpl-v2

INSTALLATION_DIRS+=	${DOCDIR} \
			${EMACS_LISPPREFIX:C|^${PREFIX}/||}/artist

GNU_CONFIGURE=		yes

.include "../../editors/emacs/modules.mk"

MAKE_FLAGS+=	EMACS=${EMACS_FLAVOR} \
		lispdir=${DESTDIR}${EMACS_LISPPREFIX}/artist

DOCS=		BUGS COPYING ChangeLog INSTALL README TODO
DOCDIR=		share/doc/artist

post-install:
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DESTDIR}${PREFIX}/${DOCDIR}

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.23 2022/05/14 22:25:41 dholland Exp $
#

DISTNAME=	flyspell-1.7m.el
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME:S/.el//}
PKGREVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	http://www-sop.inria.fr/mimosa/personnel/Manuel.Serrano/flyspell/
EXTRACT_SUFX=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://www-sop.inria.fr/mimosa/personnel/Manuel.Serrano/flyspell/flyspell.html
COMMENT=	Emacs/Xemacs on-the-fly spell checker

INSTALLATION_DIRS=	${EMACS_LISPPREFIX:C|^${PREFIX}/||}/flyspell

DEPENDS+=	${EMACS_PKGNAME_PREFIX}ispell-emacs-[0-9]*:../../textproc/ispell-emacs

EXTRACT_ONLY=	# None

WRKSRC=		${WRKDIR}

NO_CONFIGURE=	YES
NO_BUILD=	YES

do-extract:
	@${CP} ${DISTDIR}/${DIST_SUBDIR}/${DISTFILES} ${WRKSRC}

do-install:
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME} ${DESTDIR}${EMACS_LISPPREFIX}/flyspell/flyspell.el

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"

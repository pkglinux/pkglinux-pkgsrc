# $NetBSD: Makefile,v 1.12 2021/10/20 18:31:49 tm Exp $
#

DISTNAME=	t-prot-3.4
CATEGORIES=	mail
MASTER_SITES=	http://www.escape.de/users/tolot/mutt/t-prot/downloads/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.escape.de/users/tolot/mutt/t-prot/
COMMENT=	TOFU enhancement to mutt for condensing quoted text

DEPENDS+=	p5-Getopt-Mixed>=1.10:../../devel/p5-Getopt-Mixed

REPLACE_PERL+=	t-prot

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 share/doc/t-prot

do-configure do-build:

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/t-prot ${DESTDIR}${PREFIX}/bin/t-prot
	${INSTALL_MAN} ${WRKSRC}/t-prot.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/t-prot.1
	${INSTALL_DATA} ${WRKSRC}/contrib/muttrc.t-prot \
		${DESTDIR}${PREFIX}/share/doc/t-prot/

.include "../../mk/bsd.pkg.mk"

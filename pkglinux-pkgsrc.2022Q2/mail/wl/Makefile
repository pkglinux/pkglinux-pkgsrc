# $NetBSD: Makefile,v 1.54 2022/06/05 02:36:41 mef Exp $

DISTNAME=	wl-2.14.0
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	16
CATEGORIES=	mail
#MASTER_SITES=	ftp://ftp.gohome.org/wl/stable/

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	https://www.emacswiki.org/emacs/WanderLust
COMMENT=	Mail/news management system with IMAP4rev1 support for Emacs
LICENSE=	gnu-gpl-v2

BUILD_TARGET=	all info
INSTALL_TARGET=	install install-info
MAKE_FLAGS+=	INFODIR=${DESTDIR:Q}${EMACS_INFOPREFIX:Q}
MAKE_FLAGS+=	LISPDIR=${DESTDIR:Q}${EMACS_LISPPREFIX:Q}
MAKE_FLAGS+=	EMACS=${EMACS_FLAVOR:Q}
MAKE_FLAGS+=	PIXMAPDIR=${DESTDIR:Q}${PREFIX:Q}/share/wl
INFO_FILES=	yes

SUBST_CLASSES+=		pixmap
SUBST_STAGE.pixmap=	post-configure
SUBST_MESSAGE.pixmap=	Fixing wl-icon-directory default value
SUBST_FILES.pixmap=	wl/wl-vars.el
SUBST_VARS.pixmap=	PREFIX

DOCDIR=			${PREFIX}/share/doc/wl
EXAMPLESDIR=		${PREFIX}/share/examples/wl
INSTALLATION_DIRS=	${DOCDIR}/en ${DOCDIR}/ja \
			${EXAMPLESDIR}/en ${EXAMPLESDIR}/ja \
			${EMACS_INFOPREFIX}

EMACS_BUILDLINK=	# none

post-install:
	set -e; \
	for f in BUGS NEWS README; do \
		${INSTALL_DATA} ${WRKSRC:Q}/"$$f" ${DESTDIR:Q}${DOCDIR:Q}/en; \
		${INSTALL_DATA} ${WRKSRC:Q}/"$$f".ja ${DESTDIR:Q}${DOCDIR:Q}/ja; \
	done
	${INSTALL_DATA} ${WRKSRC:Q}/samples/en/dot.* ${DESTDIR:Q}${EXAMPLESDIR:Q}/en
	${INSTALL_DATA} ${WRKSRC:Q}/samples/ja/dot.* ${DESTDIR:Q}${EXAMPLESDIR:Q}/ja

.include "../../editors/emacs/modules.mk"

.include "options.mk"

.include "../../devel/apel/buildlink3.mk"
.include "../../devel/semi/buildlink3.mk"
.include "../../misc/bbdb2/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

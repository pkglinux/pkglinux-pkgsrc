# $NetBSD: Makefile,v 1.23 2022/05/14 22:25:32 dholland Exp $

DISTNAME=	irchat-pj-2.4.24.22
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	5
CATEGORIES=	chat
MASTER_SITES=	http://his.luky.org/ftp/mirrors/irchat-pj/
#MASTER_SITES+=	http://gouketsu.net/irchat-pj/src/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
#HOMEPAGE=	http://gouketsu.net/irchat-pj/
COMMENT=	Emacs lisp interface to Internet Relay Chat

INSTALLATION_DIRS=	bin ${EMACS_LISPPREFIX:C|^${PREFIX}/||}/irchat-pj

.include "../../editors/emacs/modules.mk"

.if ${EMACS_FLAVOR} == "emacs"
INSTALL_TARGET=		install
.elif ${EMACS_FLAVOR} == "xemacs"
BUILD_TARGET=		package
INSTALL_TARGET=		install-package
.else
PKG_FAIL_REASON+=	"Unknown Emacs flavor"
.endif

LIBS.SunOS+=	-lnsl -lsocket
MAKE_ENV+=	LIBS=${LIBS:M*:Q}

do-install:
	cd ${WRKSRC}; \
	${INSTALL_PROGRAM} dcc/dcc ${DESTDIR}${PREFIX}/bin; \
	for f in irchat*.el*; do \
		${INSTALL_DATA} $$f ${DESTDIR}${EMACS_LISPPREFIX}/irchat-pj; \
	done

.include "../../mk/bsd.pkg.mk"

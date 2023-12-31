# $NetBSD: Makefile,v 1.718 2022/06/24 07:16:23 rillig Exp $

PKGNAME=	pkglint-22.2.0
CATEGORIES=	pkgtools
DISTNAME=	tools
MASTER_SITES=	${MASTER_SITE_GITHUB:=golang/}
GITHUB_PROJECT=	tools
GITHUB_TAG=	92d8274bd7b8a4c65f24bafe401a029e58392704

MAINTAINER=	rillig@NetBSD.org
HOMEPAGE=	https://github.com/rillig/pkglint
COMMENT=	Verifier for NetBSD packages
LICENSE=	2-clause-bsd
CONFLICTS+=	pkglint4-[0-9]*

USE_TOOLS+=		pax
AUTO_MKDIRS=		yes
GO_SRCPATH=		golang.org/x/tools
GO_DIST_BASE=		${GO_SRCPATH}
GO_BUILD_PATTERN=	netbsd.org/pkglint/...

CHECK_RELRO_SKIP+=	bin/pkglint

SUBST_CLASSES+=		pkglint
SUBST_STAGE.pkglint=	post-configure
SUBST_FILES.pkglint+=	${WRKSRC.pkglint}/pkglint.go
SUBST_SED.pkglint+=	-e s\|@VERSION@\|${PKGVERSION}\|g
SUBST_SED.pkglint+=	-e s\|@BMAKE@\|${MAKE:T:Q}\|g

EXTRACT_PAX_ARGS=	-s ',.*/CVS$$,,' -s ',.*/CVS/.*,,' -s ',.*/\..*,,'

WRKSRC.tools=		${WRKSRC}/golang.org/x/tools
WRKSRC.pkglint=		${WRKSRC}/netbsd.org/pkglint

PREPEND_PATH+=		${WRKDIR}/bin	# for goyacc

post-extract:
	${RUN} ${MKDIR} ${WRKSRC.pkglint}
	${RUN} cd ${FILESDIR} && ${PAX} -rw ${EXTRACT_PAX_ARGS} . ${WRKSRC.pkglint}

	${RUN} ${MKDIR} ${WRKSRC.tools}
	${RUN} ${MV} ${WRKDIR}/tools-*/* ${WRKSRC.tools}

pre-build:
	${RUN} ${PKGSRC_SETENV} ${MAKE_ENV} ${GO} install -v golang.org/x/tools/cmd/goyacc
	${RUN} ${PKGSRC_SETENV} ${MAKE_ENV} ${GO} generate ${GO_BUILD_PATTERN}

do-test:
	${RUN} ${PKGSRC_SETENV} ${MAKE_ENV} ${GO} test -vet=off -v ${GO_BUILD_PATTERN}

do-install:
	${RUN} cd ${WRKDIR} && ${PAX} -rw bin/pkglint ${DESTDIR}${PREFIX}

post-install: do-install-man

# This needs to come before bsd.prefs.mk so that SSP_SUPPORTED is properly set.
.include "../../lang/go/go-package.mk"
WRKSRC=		${WRKDIR}/src	# Is set unconditionally by go-package.mk

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=		catinstall0 catinstall maninstall
.if ${MANINSTALL:Mcatinstall}
INSTALLATION_DIRS+=	man/cat1
.  if ${CATMAN_SECTION_SUFFIX:M[Yy][Ee][Ss]}
PLIST.catinstall=	yes
.  else
PLIST.catinstall0=	yes
.  endif
.endif
.if ${MANINSTALL:Mmaninstall}
INSTALLATION_DIRS+=	man/man1
PLIST.maninstall=	yes
.endif

do-install-man: .PHONY
	${PLIST.catinstall:D:U\:} ${INSTALL_MAN} ${WRKSRC.pkglint}/pkglint.0 ${DESTDIR}${PREFIX}/${PKGMANDIR}/cat1/pkglint.1
	${PLIST.catinstall0:D:U\:} ${INSTALL_MAN} ${WRKSRC.pkglint}/pkglint.0 ${DESTDIR}${PREFIX}/${PKGMANDIR}/cat1/
	${PLIST.maninstall:D:U\:} ${INSTALL_MAN} ${WRKSRC.pkglint}/pkglint.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/

.include "../../devel/go-check/buildlink3.mk"
.include "../../security/go-crypto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

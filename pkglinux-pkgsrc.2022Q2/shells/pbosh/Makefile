# $NetBSD: Makefile,v 1.21 2021/11/19 11:24:28 micha Exp $

DISTNAME=	schily-2021-09-18
PKGNAME=	pbosh-20210918
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=schilytools/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	micha@NetBSD.org
HOMEPAGE=	https://sourceforge.net/projects/schilytools/
COMMENT=	The Schily Bourne Shell
LICENSE=	cddl-1.0

MAKE_JOBS_SAFE=	no

.include "../../mk/bsd.prefs.mk"

TOOL_DEPENDS+=	smake>=1.3nb11:../../devel/smake
SMAKE=		MAKEFLAGS= smake
MAKE_FLAGS+=	DESTDIR=${DESTDIR} INS_BASE=${PREFIX} DEFMANBASE=. MANDIR=${PKGMANDIR}
# Honor CPPFLAGS, CFLAGS and LDFLAGS
MAKE_FLAGS+=	CPPOPTX=${CPPFLAGS:Q} COPTX=${CFLAGS:Q} LDOPTX=${LDFLAGS:Q}

PKG_SHELL=		bin/pbosh
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../mk/bsd.prefs.mk"

# Shared platform specific code for schilytools (provided by smake package)
.include "../../devel/smake/Makefile.common"

do-configure:
	cd ${WRKSRC}/inc && ${SMAKE} ${MAKE_FLAGS}

do-build:
	cd ${WRKSRC} && for library in					\
		libschily libxtermcap libfind libgetopt libshedit;	\
	do								\
		cd ${WRKSRC}/$${library} && ${SMAKE}  ${MAKE_FLAGS};	\
	done
	cd ${WRKSRC}/pbosh && ${SMAKE} ${MAKE_FLAGS}

# Process tables in manpage
post-build:
.if !empty(USE_TOOLS:Mtbl)
	cd ${WRKSRC} && ${TBL} sh/sh.1 >sh/pbosh.1.tmp;			\
		${MV} -f sh/pbosh.1.tmp sh/pbosh.1
.else
	cd ${WRKSRC} && ${MV} -f sh/sh.1 sh/pbosh.1
.endif

do-install:
	cd ${WRKSRC}/sh &&						\
		${INSTALL_PROGRAM} ${WRKSRC}/pbosh/OBJ/*/pbosh		\
			${DESTDIR}${PREFIX}/bin/pbosh;			\
		${INSTALL_MAN} ${WRKSRC}/sh/pbosh.1 			\
			${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"

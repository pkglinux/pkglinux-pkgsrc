# $NetBSD: Makefile,v 1.39 2022/05/24 18:51:57 jaapb Exp $

DISTNAME=		swiftsurf-1.2.5
PKGREVISION=		21
CATEGORIES=		www
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=swiftsurf/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://swiftsurf.sourceforge.net/
COMMENT=		Web proxy that can handle http and https

USE_TOOLS+=		gmake

SUBST_CLASSES+=		conf
SUBST_FILES.conf=	src/conf.ml
SUBST_VARS.conf=	PKG_SYSCONFDIR
SUBST_STAGE.conf=	pre-configure

.include "../../lang/ocaml/ocaml.mk"

.if !empty(OCAML_USE_OPT_COMPILER:M[Yy][Ee][Ss])
BUILD_TARGET=	nat
SWIFT=		swift.opt
.else
BUILD_TARGET=	byte
SWIFT=		swift
.endif

INSTALLATION_DIRS=	bin share/doc/swiftsurf share/examples/swiftsurf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/${SWIFT} ${DESTDIR}${PREFIX}/bin/swiftsurf
	${INSTALL_DATA} ${WRKSRC}/swiftsurf.* ${DESTDIR}${PREFIX}/share/examples/swiftsurf
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DESTDIR}${PREFIX}/share/doc/swiftsurf

.include "../../mk/bsd.pkg.mk"

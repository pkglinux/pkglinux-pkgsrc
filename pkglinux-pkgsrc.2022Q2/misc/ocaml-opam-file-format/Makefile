# $NetBSD: Makefile,v 1.15 2022/05/24 18:59:34 jaapb Exp $

VERSION=	2.1.4
GITHUB_PROJECT=	opam-file-format
GITHUB_TAG=	${VERSION:S/_/-/}
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/}
MAKE_JOBS_SAFE=	no

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://opam.ocaml.org/
COMMENT=	Parser and printer for the opam file syntax
LICENSE=	gnu-lgpl-v3

USE_TOOLS+=		gmake
OCAML_USE_FINDLIB=	yes

INSTALL_ENV+=	LIBDIR=${PREFIX}/${OCAML_SITELIBDIR}

.include "../../lang/ocaml/ocaml.mk"

.if ${OCAML_USE_OPT_COMPILER} == "yes"
BUILD_TARGET=	all
.else
BUILD_TARGET=	byte
.endif

.include "../../mk/bsd.pkg.mk"

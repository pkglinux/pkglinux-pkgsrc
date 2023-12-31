# $NetBSD: Makefile,v 1.14 2022/05/24 18:51:48 jaapb Exp $

.include "Makefile.common"

PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/ocaml/dune/
COMMENT=	Composable build system for OCaml

CONFLICTS=	ocaml-jbuilder-[0-9]*
SUPERSEDES=	ocaml-jbuilder-[0-9]*

USE_TOOLS+=		gmake
USE_LANGUAGES=		# none
UNLIMIT_RESOURCES+=	stacksize

BUILD_TARGET=		release
MAKE_ENV+=		MAKE_JOBS=${MAKE_JOBS:U1}
INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1 ${OCAML_SITELIBDIR}/dune

OCAML_USE_FINDLIB=	yes
OCAML_FINDLIB_DIRS=	dune \
			dune-action-plugin \
			dune-build-info \
			dune-glob \
			dune-private-libs \
			stublibs
OCAML_USE_OPAM=		yes
OPAM_INSTALL_FILES=	dune-glob \
			dune-action-plugin \
			dune-build-info \
			dune \
			dune-private-libs

post-build:
	${RUN} cd ${WRKSRC} && ./dune.exe build -p dune,dune-action-plugin,dune-build-info,dune-glob,dune-private-libs @install

.include "../../lang/ocaml/ocaml.mk"

.include "../../mk/bsd.pkg.mk"

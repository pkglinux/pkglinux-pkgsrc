# $NetBSD: Makefile,v 1.14 2022/05/24 18:51:49 jaapb Exp $

VERSION=	113.33.06
GITHUB_PROJECT=	js-build-tools
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	8
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=janestreet/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/janestreet/js-build-tools/
COMMENT=	OCaml build helper tools from Jane Street
LICENSE=	apache-2.0

HAS_CONFIGURE=		yes
USE_LANGUAGES=		# none
OCAML_USE_FINDLIB=	yes

.include "../../devel/ocaml-oasis/buildlink3.mk"
.include "../../devel/ocamlbuild/buildlink3.mk"
.include "../../misc/ocaml-opam/buildlink3.mk"
.include "../../lang/ocaml/ocaml.mk"
.include "../../mk/bsd.pkg.mk"

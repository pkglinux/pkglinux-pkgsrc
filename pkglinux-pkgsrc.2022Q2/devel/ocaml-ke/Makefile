# $NetBSD: Makefile,v 1.3 2022/05/24 18:51:49 jaapb Exp $

GITHUB_PROJECT=	ke
GITHUB_TAG=	v${PKGVERSION_NOREV}
DISTNAME=	${GITHUB_PROJECT}-0.4
PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=mirage/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/mirage/ke/
COMMENT=	Fast implementation of queue in OCaml
LICENSE=	modified-bsd

USE_LANGUAGES=	# none
OCAML_USE_DUNE=	yes

.include "../../lang/ocaml/ocaml.mk"
.include "../../devel/ocaml-bigarray-compat/buildlink3.mk"
.include "../../devel/ocaml-fmt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

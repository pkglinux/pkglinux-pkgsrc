# $NetBSD: Makefile,v 1.18 2022/05/24 18:51:50 jaapb Exp $

VERSION=	1.6
GITHUB_PROJECT=	optcomp
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	14
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=diml/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/diml/optcomp/
COMMENT=	OCaml syntax extension for optional compilation
LICENSE=	modified-bsd

SUPERSEDES=	optcomp-[0-9]*

OCAML_USE_OASIS=	yes

pre-configure:
	${RUN} cd ${WRKSRC} && oasis setup

.include "../../lang/ocaml/ocaml.mk"
.include "../../devel/ocaml-oasis/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

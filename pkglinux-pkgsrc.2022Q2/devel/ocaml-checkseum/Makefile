# $NetBSD: Makefile,v 1.7 2022/05/24 18:59:23 jaapb Exp $

DISTNAME=	checkseum-0.3.3
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=mirage/}
GITHUB_PROJECT=	checkseum
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/mirage/checkseum/
COMMENT=	Library for Adler-32, CRC32 and CRC32-C algorithms
LICENSE=	mit

DEPENDS+=	ocaml-bigarray-compat-[0-9]*:../../devel/ocaml-bigarray-compat
DEPENDS+=	ocaml-dune-configurator-[0-9]*:../../devel/ocaml-dune-configurator
DEPENDS+=	ocaml-optint>=0.1.0:../../devel/ocaml-optint

USE_LANGUAGES=	# none
USE_TOOLS+=	gmake pkg-config
OCAML_USE_DUNE=	yes

.include "../../lang/ocaml/ocaml.mk"
.include "../../devel/ocaml-cmdliner/buildlink3.mk"
.include "../../devel/ocaml-fmt/buildlink3.mk"
.include "../../devel/ocaml-optint/buildlink3.mk"
.include "../../devel/ocaml-rresult/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.22 2022/05/24 18:51:53 jaapb Exp $
#

VERSION=	1.12
GITHUB_PROJECT=	Zarith
GITHUB_TAG=	release-${VERSION}
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	ocaml-${DISTNAME:tl}
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/}

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	https://github.com/ocaml/Zarith
COMMENT=	OCaml arithmetic library for arbitrary precision integers
LICENSE=	gnu-lgpl-v2

# zarith library creation is racy
MAKE_JOBS_SAFE=	no

HAS_CONFIGURE=		yes
CONFIGURE_ENV+=		DESTDIR=${DESTDIR}
USE_TOOLS+=		gmake perl
INSTALLATION_DIRS+=	${OCAML_SITELIBDIR}/zarith

OCAML_USE_FINDLIB=	yes

REPLACE_PERL+=	z_pp.pl

.include "../../devel/gmp/buildlink3.mk"
.include "../../lang/ocaml/ocaml.mk"
.include "../../mk/bsd.pkg.mk"

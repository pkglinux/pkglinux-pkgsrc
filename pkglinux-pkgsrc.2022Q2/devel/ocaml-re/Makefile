# $NetBSD: Makefile,v 1.28 2022/05/24 18:59:31 jaapb Exp $

VERSION=	1.10.4
GITHUB_PROJECT=	ocaml-re
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/ocaml/ocaml-re/
COMMENT=	Pure OCaml regular expression library
LICENSE=	gnu-lgpl-v2.1

INSTALLATION_DIRS+=	${OCAML_SITELIBDIR}/re/emacs ${OCAML_SITELIBDIR}/re/glob \
			${OCAML_SITELIBDIR}/re/pcre ${OCAML_SITELIBDIR}/re/perl \
			${OCAML_SITELIBDIR}/re/posix ${OCAML_SITELIBDIR}/re/str \
			share/doc/re
OCAML_USE_DUNE=		yes

.include "../../lang/ocaml/ocaml.mk"
.include "../../devel/ocaml-seq/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

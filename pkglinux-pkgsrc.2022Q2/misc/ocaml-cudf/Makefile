# $NetBSD: Makefile,v 1.19 2022/05/24 18:51:53 jaapb Exp $

DISTNAME=	cudf-0.9
PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	misc
MASTER_SITES=	https://gforge.inria.fr/frs/download.php/file/36602/

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://gforge.inria.fr/projects/cudf
COMMENT=	OCaml library for the Common Upgradeability Description Format
LICENSE=	gnu-lgpl-v3

USE_TOOLS+=		gmake pkg-config pod2man
OCAML_USE_FINDLIB=	yes
MAKE_JOBS_SAFE=		no

PKGCONFIG_OVERRIDE+=	c-lib/cudf.pc.in

.include "../../lang/ocaml/ocaml.mk"

BUILD_TARGET=	all
.if ${OCAML_USE_OPT_COMPILER} == "yes"
BUILD_TARGET+=	opt
.endif

.include "../../devel/ocaml-extlib/buildlink3.mk"
.include "../../devel/ocamlbuild/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

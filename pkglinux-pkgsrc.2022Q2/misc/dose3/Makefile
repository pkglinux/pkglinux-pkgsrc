# $NetBSD: Makefile,v 1.21 2022/06/04 09:03:51 wiz Exp $

DISTNAME=	dose3-5.0.1
PKGREVISION=	7
CATEGORIES=	misc
MASTER_SITES=	https://gforge.inria.fr/frs/download.php/file/36063/

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://gforge.inria.fr/projects/dose/
COMMENT=	Package repository analysis toolkit
LICENSE=	gnu-lgpl-v3

GNU_CONFIGURE=		yes
USE_TOOLS+=		aclocal automake autoconf gmake pod2man
MAKE_JOBS_SAFE=		no
OCAML_USE_FINDLIB=	yes

.include "../../lang/ocaml/ocaml.mk"

.if ${OCAML_USE_OPT_COMPILER} != "yes"
CONFIGURE_ARGS+=	--with-bytecodeonly
.endif

pre-configure:
	cd ${WRKSRC} && aclocal -I m4 && autoconf

.include "../../lang/ocaml/ocaml.mk"
.include "../../devel/ocaml-cppo/buildlink3.mk"
.include "../../devel/ocaml-extlib/buildlink3.mk"
.include "../../devel/ocaml-re/buildlink3.mk"
.include "../../devel/ocamlbuild/buildlink3.mk"
.include "../../devel/ocamlgraph/buildlink3.mk"
.include "../../misc/ocaml-cudf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

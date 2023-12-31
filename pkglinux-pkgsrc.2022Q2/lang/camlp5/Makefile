# $NetBSD: Makefile,v 1.42 2022/06/03 08:10:56 wiz Exp $

GITHUB_PROJECT=	camlp5
DISTNAME=	${GITHUB_PROJECT}-7.13
PKGREVISION=	2
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=camlp5/}
GITHUB_TAG=	rel${PKGVERSION_NOREV:S/.//}

MAINTAINER=	tonio@NetBSD.org
HOMEPAGE=	https://camlp5.github.io/
COMMENT=	Preprocessor-pretty-printer for ocaml
LICENSE=	modified-bsd

# https://github.com/camlp5/camlp5/issues/92
BROKEN=		"does not support ocaml 4.14"

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c # needed for optimised compiler
MAKE_JOBS_SAFE=	no

CONFIGURE_ARGS+=	--bindir ${PREFIX}/bin
CONFIGURE_ARGS+=	--mandir ${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	--libdir ${PREFIX}/lib/ocaml

REPLACE_SH=	tools/*.sh meta/*.sh ocaml_src/tools/*.sh compile/*.sh

INSTALLATION_DIRS+=	${OCAML_SITELIBDIR}/camlp5

.include "../../mk/bsd.prefs.mk"
.include "../../lang/ocaml/ocaml.mk"

.if (${OCAML_USE_OPT_COMPILER} == "yes")
BUILD_TARGET=	world.opt
.else
BUILD_TARGET=	world
.endif

# compensate for upstream not having heard of 4.11.2 yet
# (should be able to remove this at the next update)
post-extract:
	cd ${WRKSRC}/ocaml_stuff && ln -s 4.11.1 4.11.2
	cd ${WRKSRC}/ocaml_src/lib/versdep && ln -s 4.11.1.ml 4.11.2.ml

post-install:
	cd ${WRKSRC}/etc && \
	${INSTALL_DATA} META ${DESTDIR}${PREFIX}/${OCAML_SITELIBDIR}/camlp5

.include "../../mk/bsd.pkg.mk"

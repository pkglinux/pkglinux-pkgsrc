# $NetBSD: Makefile,v 1.27 2021/09/19 07:02:00 nia Exp $

DISTNAME=	elixir-1.12.3
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=elixir-lang/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://elixir-lang.org/
COMMENT=	Functional, meta-programming aware language built on top of Erlang VM
LICENSE=	apache-2.0

DEPENDS+=	erlang>=21.0:../../lang/erlang

UNLIMIT_RESOURCES=	datasize virtualsize

USE_TOOLS+=	gmake:run
BUILD_TARGET=	compile
TEST_TARGET=	test

ALL_ENV+=	LC_ALL="en_US.UTF-8"

MAKE_FLAGS+=	MAN_PREFIX=${PREFIX}/${PKGMANDIR}

REPLACE_INTERPRETER+=	elixir
REPLACE.elixir.old=	.*elixir
REPLACE.elixir.new=	${TOOLS_PLATFORM.env:Q} ${PREFIX}/bin/elixir
REPLACE_FILES.elixir=	bin/mix

CHECK_INTERPRETER_SKIP+=	bin/mix
CHECK_INTERPRETER_SKIP+=	lib/elixir/bin/mix

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.6 2021/08/02 15:41:21 pin Exp $

DISTNAME=	monolith-2.6.1
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GITHUB:=Y2Z/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://github.com/Y2Z/monolith/
COMMENT=	CLI tool for saving complete web pages as a single HTML file
LICENSE=	cc0-1.0-universal

.include "cargo-depends.mk"

INSTALLATION_DIRS=	bin

MAKE_ENV+=	OPENSSL_DIR=${BUILDLINK_PREFIX.openssl:Q}
RUSTFLAGS+=	-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.openssl}/lib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/monolith ${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

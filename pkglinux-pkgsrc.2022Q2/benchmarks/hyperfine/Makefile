# $NetBSD: Makefile,v 1.5 2022/05/18 12:05:27 pin Exp $

DISTNAME=	hyperfine-1.14.0
CATEGORIES=	benchmarks
MASTER_SITES=	${MASTER_SITE_GITHUB:=sharkdp/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://github.com/sharkdp/hyperfine/
COMMENT=	Command-line benchmarking tool
LICENSE=	apache-2.0

.include "cargo-depends.mk"

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/hyperfine \
		${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/hyperfine.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/hyperfine.1

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"

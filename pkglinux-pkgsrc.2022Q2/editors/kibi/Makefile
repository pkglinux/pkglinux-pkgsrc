# $NetBSD: Makefile,v 1.4 2021/08/05 08:49:16 pin Exp $

DISTNAME=	kibi-0.2.2
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_GITHUB:=ilai-deutel/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://github.com/ilai-deutel/kibi/
COMMENT=	Text editor in less than 1024 lines of code, written in Rust
LICENSE=	mit OR apache-2.0

.include "cargo-depends.mk"

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/kibi ${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"

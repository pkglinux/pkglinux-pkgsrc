# $NetBSD: Makefile,v 1.3 2022/06/08 11:33:42 pin Exp $

DISTNAME=	hck-0.7.5
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GITHUB:=sstadick/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://github.com/sstadick/hck/
COMMENT=	Sharp cut(1) clone
LICENSE=	unlicense OR mit

BUILD_DEPENDS+=		cmake-[0-9]*:../../devel/cmake

.include "cargo-depends.mk"

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/hck \
		${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.13 2022/06/02 18:52:04 bsiegert Exp $

DISTNAME=	gvproxy-0.3.0
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=containers/}
GITHUB_PROJECT=	gvisor-tap-vsock
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/containers/gvisor-tap-vsock/
COMMENT=	Replacement for libslirp and VPNKit, written in pure Go
LICENSE=	apache-2.0

GO_BUILD_PATTERN=	./cmd/gvproxy
INSTALLATION_DIRS+=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/.gopath/bin/gvproxy ${DESTDIR}${PREFIX}/bin/gvproxy

.include "go-modules.mk"

.include "../../lang/go/go-module.mk"
.include "../../mk/bsd.pkg.mk"

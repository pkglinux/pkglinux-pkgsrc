# $NetBSD: Makefile,v 1.30 2022/06/02 18:51:57 bsiegert Exp $

DISTNAME=	promscale-0.10.0
MASTER_SITES=	${MASTER_SITE_GITHUB:=timescale/}
PKGREVISION=	3
CATEGORIES=	databases
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/timescale/promscale
COMMENT=	TimescaleDB storage connector for Prometheus
LICENSE=	apache-2.0

.include "go-modules.mk"

GO_BUILD_PATTERN=	./cmd/promscale/...

.include "../../lang/go/go-module.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.16 2022/06/02 18:52:08 bsiegert Exp $
#
# Changelog:
# https://github.com/danielgtaylor/restish/releases/

DISTNAME=	restish-0.14.0
PKGREVISION=	2
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GITHUB:=danielgtaylor/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://rest.sh/
COMMENT=	CLI for interacting with REST-ish HTTP APIs
LICENSE=	mit

GO_BUILD_PATTERN=	.

.include "go-modules.mk"

.include "../../lang/go/go-module.mk"
.include "../../mk/bsd.pkg.mk"

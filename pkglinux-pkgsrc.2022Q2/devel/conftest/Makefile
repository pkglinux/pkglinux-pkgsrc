# $NetBSD: Makefile,v 1.9 2022/06/05 21:15:44 leot Exp $

DISTNAME=	conftest-0.32.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=open-policy-agent/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	leot@NetBSD.org
HOMEPAGE=	https://www.conftest.dev/
COMMENT=	Tests structured configuration data via OPA Rego query language
LICENSE=	apache-2.0

GO_BUILD_PATTERN+=	-ldflags ' \
			-X github.com/open-policy-agent/conftest/internal/commands.version=${GITHUB_TAG}' \
			.

.include "go-modules.mk"

.include "../../lang/go/go-module.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.48 2022/06/02 18:51:58 bsiegert Exp $

DISTNAME=	go-nbreader-0.0.20150201
PKGREVISION=	47
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=svent/}
GITHUB_PROJECT=	go-nbreader
GITHUB_TAG=	7cef48da76dca6a496faa7fe63e39ed665cbd219

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/svent/go-nbreader/
COMMENT=	Go library providing a non-blocking reader
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}
GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/svent/go-nbreader

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"

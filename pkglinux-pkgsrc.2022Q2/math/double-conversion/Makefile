# $NetBSD: Makefile,v 1.4 2022/01/16 23:07:47 wiz Exp $

DISTNAME=	double-conversion-3.2.0
CATEGORIES=	math converters
MASTER_SITES=	${MASTER_SITE_GITHUB:=google/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/google/double-conversion/
COMMENT=	Conversion routines for IEEE doubles
LICENSE=	modified-bsd

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
CMAKE_ARGS+=	-DBUILD_SHARED_LIBS:BOOL=ON
CMAKE_ARGS+=	-DCMAKE_EXPORT_NO_PACKAGE_REGISTRY=ON

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.19 2022/02/17 10:48:30 wiz Exp $

DISTNAME=	gdspy-1.6.11
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	cad python
MASTER_SITES=	${MASTER_SITE_PYPI:=g/gdspy/}
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/heitzmann/gdspy
COMMENT=	Python module for creating GDSII stream files
LICENSE=	boost-license

# tests not included in pypi distfile
#TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES+=	c c++

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

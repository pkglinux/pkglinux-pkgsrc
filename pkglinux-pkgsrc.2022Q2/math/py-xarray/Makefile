# $NetBSD: Makefile,v 1.13 2022/02/10 14:11:31 adam Exp $

DISTNAME=	xarray-0.21.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_PYPI:=x/xarray/}

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/pydata/xarray
COMMENT=	N-D labeled arrays and datasets in Python
LICENSE=	apache-2.0

BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm>=1.15.0:../../devel/py-setuptools_scm
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.18:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-packaging>=20.0:../../devel/py-packaging
DEPENDS+=	${PYPKGPREFIX}-pandas>=1.1:../../math/py-pandas
TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner

USE_LANGUAGES=	# none

PYSETUPTESTTARGET=	pytest

PYTHON_VERSIONS_INCOMPATIBLE=	27 37

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

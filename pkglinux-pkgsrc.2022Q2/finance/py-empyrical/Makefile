# $NetBSD: Makefile,v 1.6 2022/04/10 00:57:13 gutteridge Exp $

DISTNAME=	empyrical-0.5.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	finance python
MASTER_SITES=	${MASTER_SITE_PYPI:=e/empyrical/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/quantopian/empyrical
COMMENT=	Common financial risk and performance metrics
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-bottleneck>=1.0.0:../../math/py-bottleneck
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.9.2:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-pandas>=0.16.1:../../math/py-pandas
DEPENDS+=	${PYPKGPREFIX}-pandas-datareader>=0.2:../../math/py-pandas-datareader
DEPENDS+=	${PYPKGPREFIX}-scipy>=0.15.1:../../math/py-scipy

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27 37 # py-scipy

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.5 2022/05/19 07:39:43 adam Exp $

DISTNAME=	google-i18n-address-2.5.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=g/google-i18n-address/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mirumee/google-i18n-address
COMMENT=	Python library for internationalized address formatting
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-requests>=2.7.0:../../devel/py-requests
TEST_DEPENDS+=	${PYPKGPREFIX}-mock>=0:../../devel/py-mock
TEST_DEPENDS+=	${PYPKGPREFIX}-test-cov>=0:../../devel/py-test-cov
TEST_DEPENDS+=	${PYPKGPREFIX}-test>=0:../../devel/py-test

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.213 2022/06/13 18:26:00 adam Exp $

DISTNAME=	setuptools-62.4.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=s/setuptools/}

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://github.com/pypa/setuptools
COMMENT=	New Python packaging system
LICENSE=	python-software-foundation OR zpl-2.0

DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat
TEST_DEPENDS+=	${PYPKGPREFIX}-ini2toml>=0.9:../../textproc/py-ini2toml
TEST_DEPENDS+=	${PYPKGPREFIX}-jaraco.envs>=2.2:../../devel/py-jaraco.envs
TEST_DEPENDS+=	${PYPKGPREFIX}-jaraco.path>=3.2.0:../../devel/py-jaraco.path
TEST_DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
TEST_DEPENDS+=	${PYPKGPREFIX}-pip-run>=8.8:../../devel/py-pip-run
TEST_DEPENDS+=	${PYPKGPREFIX}-sphinx>=4.3.2:../../textproc/py-sphinx
TEST_DEPENDS+=	${PYPKGPREFIX}-test-fixture-config-[0-9]*:../../devel/py-test-fixture-config
TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner
TEST_DEPENDS+=	${PYPKGPREFIX}-test-virtualenv-[0-9]*:../../devel/py-test-virtualenv
TEST_DEPENDS+=	${PYPKGPREFIX}-tomli_w>=1.0.0:../../textproc/py-tomli_w
TEST_DEPENDS+=	${PYPKGPREFIX}-wheel-[0-9]*:../../devel/py-wheel

PYTHON_VERSIONS_INCOMPATIBLE=	27

PYSETUPTESTTARGET=	pytest

BOOTSTRAP_SETUPTOOLS=	yes

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

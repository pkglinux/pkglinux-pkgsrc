# $NetBSD: Makefile,v 1.14 2022/05/29 07:47:05 wiz Exp $

DISTNAME=	pip-audit-2.3.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	security python
# pypi file does not include tests
#MASTER_SITES=	${MASTER_SITE_PYPI:=p/pip-audit/}
MASTER_SITES=	${MASTER_SITE_GITHUB:=trailofbits/}
GITHUB_PROJECT=	pip-audit
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pypi.org/project/pip-audit/
COMMENT=	Scan Python environments for known vulnerabilities
LICENSE=	apache-2.0

TOOL_DEPENDS+=	${PYPKGPREFIX}-flit_core-[0-9]*:../../devel/py-flit_core
DEPENDS+=	${PYPKGPREFIX}-cachecontrol>=0.12.10:../../devel/py-cachecontrol
DEPENDS+=	${PYPKGPREFIX}-cyclonedx-python-lib>=1.0.0:../../security/py-cyclonedx-python-lib
DEPENDS+=	${PYPKGPREFIX}-html5lib>=1.1:../../textproc/py-html5lib
DEPENDS+=	${PYPKGPREFIX}-packaging>=21.0.0:../../devel/py-packaging
DEPENDS+=	${PYPKGPREFIX}-pip-api>=0.0.28:../../devel/py-pip-api
DEPENDS+=	${PYPKGPREFIX}-progress>=1.6:../../devel/py-progress
DEPENDS+=	${PYPKGPREFIX}-resolvelib>=0.8.0:../../devel/py-resolvelib
TEST_DEPENDS+=	${PYPKGPREFIX}-pretend-[0-9]*:../../devel/py-pretend
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES=	# none

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
        ${MV} pip-audit pip-audit-${PYVERSSUFFIX} || ${TRUE}

# as of 2.3.0
# 1 failed, 133 passed
TEST_ENV+=	PYTHONPATH=${WRKSRC}/build/lib:${WRKSRC}/build/lib/test
do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} pytest-${PYVERSSUFFIX}

.include "../../lang/python/wheel.mk"
.include "../../mk/bsd.pkg.mk"

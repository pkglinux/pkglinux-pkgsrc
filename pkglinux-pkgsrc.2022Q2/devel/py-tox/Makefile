# $NetBSD: Makefile,v 1.29 2022/05/01 09:45:41 wiz Exp $

DISTNAME=	tox-3.24.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/tox/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tox.readthedocs.io/
COMMENT=	Virtualenv-based automation of test activities
LICENSE=	mit

BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm>0:../../devel/py-setuptools_scm
DEPENDS+=	${PYPKGPREFIX}-filelock>=3.0.0:../../devel/py-filelock
DEPENDS+=	${PYPKGPREFIX}-packaging>=14:../../devel/py-packaging
DEPENDS+=	${PYPKGPREFIX}-pluggy>=0.12.0:../../devel/py-pluggy
DEPENDS+=	${PYPKGPREFIX}-py>=1.4.17:../../devel/py-py
DEPENDS+=	${PYPKGPREFIX}-six>=1.14.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-toml>=0.9.4:../../textproc/py-toml
DEPENDS+=	${PYPKGPREFIX}-virtualenv>=16.0.0:../../devel/py-virtualenv
TEST_DEPENDS+=	${PYPKGPREFIX}-flaky>=3.4.0:../../devel/py-flaky
TEST_DEPENDS+=	${PYPKGPREFIX}-freezegun>=0.3.11:../../devel/py-freezegun
TEST_DEPENDS+=	${PYPKGPREFIX}-pathlib2>=2.3.3:../../devel/py-pathlib2
TEST_DEPENDS+=	${PYPKGPREFIX}-psutil>=5.6.1:../../sysutils/py-psutil
TEST_DEPENDS+=	${PYPKGPREFIX}-test>=4.0.0:../../devel/py-test-cov
TEST_DEPENDS+=	${PYPKGPREFIX}-test-cov>=2.5.1:../../devel/py-test-cov
TEST_DEPENDS+=	${PYPKGPREFIX}-test-mock>=1.10.0:../../devel/py-test-mock
TEST_DEPENDS+=	${PYPKGPREFIX}-test-randomly>=1.0.0:../../devel/py-test-randomly
TEST_DEPENDS+=	${PYPKGPREFIX}-test-xdist>=1.22.2:../../devel/py-test-xdist

PYTHON_VERSIONS_INCOMPATIBLE=	27 # py-filelock

.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} < 38
DEPENDS+=	${PYPKGPREFIX}-importlib-metadata-[0-9]*:../../devel/py-importlib-metadata
.endif

USE_LANGUAGES=	# none

USE_PKG_RESOURCES=	yes

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} tox tox-${PYVERSSUFFIX} && \
	${MV} tox-quickstart tox-quickstart-${PYVERSSUFFIX} || ${TRUE}

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} pytest-${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

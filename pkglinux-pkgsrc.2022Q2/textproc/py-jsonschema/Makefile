# $NetBSD: Makefile,v 1.24 2022/05/11 09:30:52 adam Exp $

DISTNAME=	jsonschema-4.5.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=j/jsonschema/}

MAINTAINER=	bsiegert@NetBSD.org
HOMEPAGE=	https://github.com/Julian/jsonschema
COMMENT=	Implementation of JSON Schema for Python
LICENSE=	modified-bsd

BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm>=3.4:../../devel/py-setuptools_scm
BUILD_DEPENDS+=	${PYPKGPREFIX}-wheel-[0-9]*:../../devel/py-wheel
DEPENDS+=	${PYPKGPREFIX}-attrs>=17.4.0:../../devel/py-attrs
DEPENDS+=	${PYPKGPREFIX}-pyrsistent>=0.17.3:../../devel/py-pyrsistent
TEST_DEPENDS+=	${PYPKGPREFIX}-twisted>0:../../net/py-twisted

USE_LANGUAGES=	# none

USE_PKG_RESOURCES=	yes

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} < 38
DEPENDS+=	${PYPKGPREFIX}-importlib-metadata>0:../../devel/py-importlib-metadata
DEPENDS+=	${PYPKGPREFIX}-typing-extensions>0:../../devel/py-typing-extensions
.endif
.if ${_PYTHON_VERSION} < 39
DEPENDS+=	${PYPKGPREFIX}-importlib-resources>=1.4.0:../../devel/py-importlib-resources
.endif

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} jsonschema jsonschema-${PYVERSSUFFIX} || ${TRUE}

TEST_ENV+=	JSON_SCHEMA_TEST_SUITE=${WRKSRC}/json

do-test:
	cd ${WRKSRC}/jsonschema && ${SETENV} ${TEST_ENV} ${PYTHONBIN} -m unittest discover -v

.include "../../lang/python/wheel.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.31 2022/04/29 13:27:48 adam Exp $

DISTNAME=	alembic-1.7.7
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/alembic/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://alembic.sqlalchemy.org/
COMMENT=	Database migration tool for SQLAlchemy
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-dateutil-[0-9]*:../../time/py-dateutil
DEPENDS+=	${PYPKGPREFIX}-mako-[0-9]*:../../devel/py-mako
DEPENDS+=	${PYPKGPREFIX}-sqlalchemy>=1.3.0:../../databases/py-sqlalchemy
TEST_DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_PKG_RESOURCES=	yes

.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} < 39
DEPENDS+=	${PYPKGPREFIX}-importlib-metadata-[0-9]*:../../devel/py-importlib-metadata
DEPENDS+=	${PYPKGPREFIX}-importlib-resources-[0-9]*:../../devel/py-importlib-resources
.endif

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} alembic alembic-${PYVERSSUFFIX} || ${TRUE}

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} pytest-${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

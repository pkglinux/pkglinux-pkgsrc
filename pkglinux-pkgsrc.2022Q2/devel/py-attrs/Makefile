# $NetBSD: Makefile,v 1.19 2022/02/23 11:43:41 adam Exp $

DISTNAME=	attrs-21.4.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/attrs/}

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	https://www.attrs.org/
COMMENT=	Attributes without boilerplate
LICENSE=	mit

TEST_DEPENDS+=	${PYPKGPREFIX}-Pympler-[0-9]*:../../devel/py-Pympler
TEST_DEPENDS+=	${PYPKGPREFIX}-ZopeInterface-[0-9]*:../../devel/py-ZopeInterface
TEST_DEPENDS+=	${PYPKGPREFIX}-coverage-[0-9]*:../../devel/py-coverage
TEST_DEPENDS+=	${PYPKGPREFIX}-six-[0-9]*:../../lang/py-six

PYTHON_VERSIONED_DEPENDENCIES=	test:test
PYTHON_VERSIONED_DEPENDENCIES+=	hypothesis:test

USE_LANGUAGES=	# none

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} pytest-${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"

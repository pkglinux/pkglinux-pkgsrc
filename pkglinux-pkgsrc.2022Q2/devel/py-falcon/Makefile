# $NetBSD: Makefile,v 1.10 2022/05/01 07:51:48 wiz Exp $

DISTNAME=	falcon-2.0.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=f/falcon/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://falconframework.org/
COMMENT=	Unladen web framework for building APIs and app backends
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-cython-[0-9]*:../../devel/py-cython
TEST_DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests
TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner
TEST_DEPENDS+=	${PYPKGPREFIX}-testtools-[0-9]*:../../devel/py-testtools
TEST_DEPENDS+=	${PYPKGPREFIX}-yaml-[0-9]*:../../textproc/py-yaml

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_PKG_RESOURCES=	yes

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} falcon-bench falcon-bench-${PYVERSSUFFIX} && \
	${MV} falcon-print-routes falcon-print-routes-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

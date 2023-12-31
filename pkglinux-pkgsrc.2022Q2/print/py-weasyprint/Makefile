# $NetBSD: Makefile,v 1.37 2022/06/01 21:27:08 gutteridge Exp $

DISTNAME=	weasyprint-55.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	print python
MASTER_SITES=	${MASTER_SITE_PYPI:=w/weasyprint/}

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	https://weasyprint.org/
COMMENT=	Converts HTML/CSS documents to PDF
LICENSE=	modified-bsd

BUILD_DEPENDS+=	${PYPKGPREFIX}-flit_core-[0-9]*:../../devel/py-flit_core
DEPENDS+=	${PYPKGPREFIX}-Pillow>=4.0.0:../../graphics/py-Pillow
DEPENDS+=	${PYPKGPREFIX}-cffi>=0.6:../../devel/py-cffi
DEPENDS+=	${PYPKGPREFIX}-cssselect2>=0.1:../../textproc/py-cssselect2
DEPENDS+=	${PYPKGPREFIX}-fonttools>=4.0.0:../../fonts/py-fonttools
DEPENDS+=	${PYPKGPREFIX}-html5lib>=1.1:../../textproc/py-html5lib
DEPENDS+=	${PYPKGPREFIX}-pydyf>=0.0.3:../../print/py-pydyf
DEPENDS+=	${PYPKGPREFIX}-pyphen>=0.9.1:../../textproc/py-pyphen
DEPENDS+=	${PYPKGPREFIX}-tinycss2>=1.0.0:../../textproc/py-tinycss2
TEST_DEPENDS+=	${PYPKGPREFIX}-test-cov-[0-9]*:../../devel/py-test-cov
TEST_DEPENDS+=	${PYPKGPREFIX}-test-flake8-[0-9]*:../../devel/py-test-flake8
TEST_DEPENDS+=	${PYPKGPREFIX}-test-isort-[0-9]*:../../devel/py-test-isort
TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner

USE_LANGUAGES=	c

PYTHON_VERSIONS_INCOMPATIBLE=	27 # py-fonttools

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} weasyprint weasyprint-${PYVERSSUFFIX} || ${TRUE}

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} pytest-${PYVERSSUFFIX} tests

BUILDLINK_API_DEPENDS.pango+=   pango>=1.44.0
.include "../../devel/pango/buildlink3.mk"
.include "../../lang/python/wheel.mk"
.include "../../mk/bsd.pkg.mk"

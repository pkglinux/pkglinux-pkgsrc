# $NetBSD: Makefile,v 1.3 2022/01/04 20:55:07 wiz Exp $

DISTNAME=	sphinxcontrib-qthelp-1.0.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=s/sphinxcontrib-qthelp/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sphinx-doc.org/
COMMENT=	Sphinx API for QtHelp document
LICENSE=	2-clause-bsd

TEST_DEPENDS+=	${PYPKGPREFIX}-sphinx>=2.0.0:../../textproc/py-sphinx
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27	# py-sphinx

do-test:
	cd ${WRKSRC} && pytest-${PYVERSSUFFIX} tests

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.12 2022/05/23 08:31:51 adam Exp $

DISTNAME=	pathlib2-2.3.7.post1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/post//}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pathlib2/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mcmtroffaes/pathlib2
COMMENT=	Object-oriented filesystem paths
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-six-[0-9]*:../../lang/py-six

.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} == 27
DEPENDS+=	${PYPKGPREFIX}-scandir-[0-9]*:../../devel/py-scandir
DEPENDS+=	${PYPKGPREFIX}-typing-[0-9]*:../../devel/py-typing
TEST_DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
.endif

USE_LANGUAGES=	# none

do-test:
	cd ${WRKSRC} && ${PYTHONBIN} tests/test_pathlib2.py

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

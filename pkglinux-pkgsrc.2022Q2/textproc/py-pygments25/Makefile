# $NetBSD: Makefile,v 1.5 2022/01/05 20:47:37 wiz Exp $

DISTNAME=	Pygments-2.5.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
PKGREVISION=	2
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=P/Pygments/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pygments.org/
COMMENT=	Python syntax highlighter
LICENSE=	2-clause-bsd

# circular dependency
#TEST_DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test4

PYTHON_VERSIONS_ACCEPTED=	27

USE_PKG_RESOURCES=	yes

USE_LANGUAGES=	# none

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} pygmentize pygmentize-${PYVERSSUFFIX} || ${TRUE}

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} pytest-${PYVERSSUFFIX} tests

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.27 2022/02/13 08:53:43 wiz Exp $

DISTNAME=	pyutil-3.3.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyutil/}

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	https://github.com/tpltnt/pyutil
COMMENT=	Collection of mature utilities for Python programmers
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-simplejson>=2.1.0:../../converters/py-simplejson
TEST_DEPENDS+=	${PYPKGPREFIX}-mock>=1.3.0:../../devel/py-mock

PYTHON_VERSIONED_DEPENDENCIES+=	twisted:test

USE_LANGUAGES=	# none

USE_PKG_RESOURCES=	yes

CONFLICTS+=	passphrase-[0-9]*

post-extract:
	${FIND} ${WRKSRC} -name __pycache__ -or -name '*.pyc' -exec ${RM} -R {} +

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.15 2022/06/13 18:25:03 adam Exp $

DISTNAME=	traitlets-5.2.2.post1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/traitlets/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/ipython/traitlets
COMMENT=	Traitlets Python config system
LICENSE=	modified-bsd

BUILD_DEPENDS+=	${PYPKGPREFIX}-hatchling>=0.25:../../devel/py-hatchling

USE_LANGUAGES=	# none

# Traitlets 5.0+ supports Python 3.7 and above, following NEP 29.
# For any earlier version of Python use traitlets 4.x
PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/wheel.mk"
.include "../../mk/bsd.pkg.mk"

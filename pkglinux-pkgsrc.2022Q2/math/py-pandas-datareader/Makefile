# $NetBSD: Makefile,v 1.14 2022/04/10 14:42:18 nia Exp $

DISTNAME=	pandas-datareader-0.8.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pandas-datareader/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/pydata/pandas-datareader
COMMENT=	Remote data access for pandas
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-lxml-[0-9]*:../../textproc/py-lxml
DEPENDS+=	${PYPKGPREFIX}-pandas>=0.21:../../math/py-pandas
DEPENDS+=	${PYPKGPREFIX}-requests>=2.3.0:../../devel/py-requests

PYTHON_VERSIONS_INCOMPATIBLE=	27 37 # py-pandas

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

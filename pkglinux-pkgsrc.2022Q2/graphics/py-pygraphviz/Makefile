# $NetBSD: Makefile,v 1.14 2022/02/10 10:53:43 adam Exp $

DISTNAME=	pygraphviz-1.9
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	graphics python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pygraphviz/}
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pygraphviz.github.io/
COMMENT=	Python interface to the Graphviz package
LICENSE=	original-bsd

#TEST_DEPENDS+=	${PYPKGPREFIX}-doctest-ignore-unicode>=0.1.2:../..
TEST_DEPENDS+=	${PYPKGPREFIX}-mock>=2.0.0:../../devel/py-mock
TEST_DEPENDS+=	${PYPKGPREFIX}-nose>=1.3.7:../../devel/py-nose

USE_TOOLS+=	pkg-config

PYTHON_VERSIONS_INCOMPATIBLE=	27 37

.include "../../graphics/graphviz/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.6 2022/04/27 09:41:34 adam Exp $

DISTNAME=	setuptools-rust-1.3.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=s/setuptools-rust/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/PyO3/setuptools-rust
COMMENT=	Setuptools plugin for Rust support
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-semantic_version>=2.8.2:../../devel/py-semantic_version
DEPENDS+=	${PYPKGPREFIX}-setuptools>=46.1:../../devel/py-setuptools
DEPENDS+=	${PYPKGPREFIX}-typing-extensions>=3.7.4.3:../../devel/py-typing-extensions
BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm>=6.3.2:../../devel/py-setuptools_scm

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

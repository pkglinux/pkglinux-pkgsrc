# $NetBSD: Makefile,v 1.4 2022/01/04 20:55:02 wiz Exp $

DISTNAME=	pyPEG2-2.15.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//:tl}
PKGREVISION=	2
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyPEG2/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://fdik.org/pyPEG2/
COMMENT=	Intrinsic PEG Parser-Interpreter for Python
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-lxml-[0-9]*:../../textproc/py-lxml

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

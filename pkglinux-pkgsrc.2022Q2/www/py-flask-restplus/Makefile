# $NetBSD: Makefile,v 1.5 2022/04/07 06:50:18 adam Exp $

DISTNAME=	flask-restplus-0.13.0
PKGREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_PYPI:=f/flask-restplus/}

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	https://github.com/noirbizarre/flask-restplus
COMMENT=	Fully featured framework for fast, easy and documented API development
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-aniso8601>=0.82:../../time/py-aniso8601
DEPENDS+=	${PYPKGPREFIX}-flask>=0.8:../../www/py-flask
DEPENDS+=	${PYPKGPREFIX}-jsonschema-[0-9]*:../../textproc/py-jsonschema
DEPENDS+=	${PYPKGPREFIX}-pytz-[0-9]*:../../time/py-pytz
DEPENDS+=	${PYPKGPREFIX}-six>=1.3.0:../../lang/py-six

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27	# py-jsonschema

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

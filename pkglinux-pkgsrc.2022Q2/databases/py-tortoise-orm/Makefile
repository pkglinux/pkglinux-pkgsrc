# $NetBSD: Makefile,v 1.16 2022/01/04 20:52:45 wiz Exp $

DISTNAME=	tortoise-orm-0.16.21
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/tortoise-orm/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/tortoise/tortoise-orm
COMMENT=	Easy async ORM for Python, built with relations in mind
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-aiosqlite>=0.16.0:../../databases/py-aiosqlite
DEPENDS+=	${PYPKGPREFIX}-iso8601>=0.1.13:../../time/py-iso8601
DEPENDS+=	${PYPKGPREFIX}-pypika>=0.44.0:../../databases/py-pypika
DEPENDS+=	${PYPKGPREFIX}-pytz>=2020.4:../../time/py-pytz
# accel
DEPENDS+=	${PYPKGPREFIX}-ciso8601>=2.1.2:../../time/py-ciso8601
DEPENDS+=	${PYPKGPREFIX}-rapidjson-[0-9]*:../../textproc/py-rapidjson
DEPENDS+=	${PYPKGPREFIX}-uvloop>=0.14.0:../../devel/py-uvloop

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.28 2022/01/05 15:41:27 wiz Exp $

DISTNAME=	vobject-0.9.6.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=v/vobject/}

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	https://eventable.github.io/vobject/
COMMENT=	Python iCalendar (ics) and vCard library
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-dateutil>=2.4.0:../../time/py-dateutil

USE_PKG_RESOURCES=	yes

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
		${MV} change_tz change_tz-${PYVERSSUFFIX} && \
		${MV} ics_diff ics_diff-${PYVERSSUFFIX} || ${TRUE}

do-test:
	cd ${WRKSRC} && ${PYTHONBIN} tests.py

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

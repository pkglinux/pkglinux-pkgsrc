# $NetBSD: Makefile,v 1.18 2022/01/05 20:07:11 wiz Exp $

DISTNAME=	twill-1.8.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	python www
MASTER_SITES=	${MASTER_SITE_PYPI:=t/twill/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://twill.idyll.org/
COMMENT=	Python package for the twill Web browsing language
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-cssselect-[0-9]*:../../textproc/py-cssselect

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED=	27 # setup fails for 1.8.0

USE_PKG_RESOURCES=	yes

post-install:
	${MV} ${DESTDIR}${PREFIX}/bin/twill-fork \
		${DESTDIR}${PREFIX}/bin/twill-fork${PYVERSSUFFIX} || ${TRUE}
	${MV} ${DESTDIR}${PREFIX}/bin/twill-sh \
		${DESTDIR}${PREFIX}/bin/twill-sh${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

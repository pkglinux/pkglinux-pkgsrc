# $NetBSD: Makefile,v 1.2 2022/01/10 22:12:22 wiz Exp $

DISTNAME=	functools32-3.2.3-2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:C/-([0-9])$/.\1/}
PKGREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=f/functools32/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/MiCHiLU/python-functools32
COMMENT=	Backport of the functools module from Python 3.2.3
LICENSE=	python-software-foundation

USE_LANGUAGES=		# none

PYTHON_VERSIONS_ACCEPTED=	27

EGG_NAME=	${DISTNAME:C/-([0-9])$/_\1/}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

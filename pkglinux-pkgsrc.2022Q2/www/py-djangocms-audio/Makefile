# $NetBSD: Makefile,v 1.6 2022/01/04 20:55:22 wiz Exp $

DISTNAME=	djangocms-audio-2.0.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_PYPI:=d/djangocms-audio/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://github.com/divio/djangocms-audio
COMMENT=	Django CMS plugin that inserts an icon (font or svg)
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-django-cms>=3.7:../../www/py-django-cms
DEPENDS+=	${PYPKGPREFIX}-django-filer>=1.7:../../www/py-django-filer
DEPENDS+=	${PYPKGPREFIX}-djangocms-attributes-field>=1.0:../../www/py-djangocms-attributes-field

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.20 2022/01/05 15:41:24 wiz Exp $

DISTNAME=	jsbeautifier-1.13.13
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=j/jsbeautifier/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://beautifier.io/
COMMENT=	JavaScript unobfuscator and beautifier
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-editorconfig-core>=0.12.2:../../devel/py-editorconfig-core
DEPENDS+=	${PYPKGPREFIX}-six>=1.13.0:../../lang/py-six

PYTHON_VERSIONED_DEPENDENCIES=	test:test

USE_PKG_RESOURCES=	yes

USE_LANGUAGES=	# none

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} js-beautify js-beautify-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"

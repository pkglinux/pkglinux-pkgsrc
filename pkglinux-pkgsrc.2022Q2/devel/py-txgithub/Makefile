# $NetBSD: Makefile,v 1.4 2022/02/13 08:53:43 wiz Exp $

DISTNAME=	txgithub-15.0.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel net python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/txgithub/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/tomprince/txgithub
COMMENT=	GitHub API client using Twisted
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-OpenSSL-[0-9]*:../../security/py-OpenSSL

PYTHON_VERSIONED_DEPENDENCIES+=	twisted

USE_LANGUAGES=	# none

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
		${MV} get-github-token get-github-token-${PYVERSSUFFIX} && \
		${MV} gist gist-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.85 2022/02/05 12:00:34 leot Exp $

DISTNAME=	gallery_dl-1.20.3
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	net python
MASTER_SITES=	${MASTER_SITE_PYPI:=g/gallery-dl/}

MAINTAINER=	leot@NetBSD.org
HOMEPAGE=	https://github.com/mikf/gallery-dl
COMMENT=	Command-line program to download image galleries and collections
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-sqlite3-[0-9]*:../../databases/py-sqlite3
DEPENDS+=	${PYPKGPREFIX}-requests>=2.11.0:../../devel/py-requests

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_MESSAGE.paths=	Adjust hard-coded paths
SUBST_FILES.paths=	setup.py
SUBST_SED.paths+=	-e 's,etc/bash_completion\.d,share/bash_completion.d,'
SUBST_SED.paths+=	-e 's,share/man,${PKGMANDIR},g'

USE_LANGUAGES=			# none

# Only for Python 3
PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_PKG_RESOURCES=	yes

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

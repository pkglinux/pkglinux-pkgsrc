# $NetBSD: Makefile,v 1.65 2022/04/18 19:10:44 adam Exp $

DISTNAME=	pysqlite-2.8.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/pysqlite/sqlite2/}
PKGREVISION=	11
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pysqlite/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/ghaering/pysqlite
COMMENT=	SQLite database adapter for Python
LICENSE=	mit

PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 2.6.3

.PHONY: do-postinstall-test
do-postinstall-test:
	cd ${WRKDIR} && ${PYTHONBIN} -c "from pysqlite2 import test;test.test()"

.include "../../lang/python/egg.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

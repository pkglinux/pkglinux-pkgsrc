# $NetBSD: Makefile,v 1.23 2022/04/07 07:16:20 adam Exp $

DISTNAME=	gssapi-1.7.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=g/gssapi/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/pythongssapi/python-gssapi
COMMENT=	Low-level and high-level wrappers around GSSAPI C libraries
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-decorator-[0-9]*:../../devel/py-decorator

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=	mitkrb posix

# On Darwin, py-gssapi uses -framework GSS
.if ${OPSYS} != "Darwin"
PLIST.posix=	yes
.  include "../../mk/krb5.buildlink3.mk"
.  if ${KRB5_TYPE} == "mit-krb5"
PLIST.mitkrb=	yes
.  endif
.endif

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

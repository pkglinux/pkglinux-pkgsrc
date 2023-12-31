# $NetBSD: Makefile,v 1.22 2022/04/10 00:57:13 gutteridge Exp $

DISTNAME=	obspy-1.2.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	geography python
MASTER_SITES=	${MASTER_SITE_PYPI:=o/obspy/}
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.obspy.org/
COMMENT=	Python framework for seismological observatories
LICENSE=	gnu-lgpl-v3

DEPENDS+=	${PYPKGPREFIX}-decorator>=0:../../devel/py-decorator
DEPENDS+=	${PYPKGPREFIX}-future>=0.12.4:../../devel/py-future
DEPENDS+=	${PYPKGPREFIX}-lxml>=3.2.3:../../textproc/py-lxml
DEPENDS+=	${PYPKGPREFIX}-matplotlib-[0-9]*:../../graphics/py-matplotlib
DEPENDS+=	${PYPKGPREFIX}-requests>=0:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.0:../../math/py-scipy
DEPENDS+=	${PYPKGPREFIX}-sqlalchemy>=0:../../databases/py-sqlalchemy

USE_LANGUAGES=	c fortran
USE_TOOLS+=	bash:run

REPLACE_BASH=	obspy/taup/tests/data/TauP_test_data/gendata.sh

PYTHON_VERSIONS_INCOMPATIBLE=	27 37 # py-scipy

USE_PKG_RESOURCES=	yes

pre-configure:
	${FIND} ${WRKSRC} -type f -exec ${CHMOD} -x {} \;

.include "../../lang/python/pyversion.mk"

.if exists(${PYTHONBIN:Q})
PYPLATFORM!=	${PYTHONBIN} -c 'import platform; print (platform.system() + "_" + platform.architecture()[0])'

PLIST_SUBST+=		PYPLATFORM=${PYPLATFORM} PYPKGPREFIX=${PYPKGPREFIX}
PRINT_PLIST_AWK+=	/^${PYPLATFORM:S|/|\\/|g}/ \
			{ gsub(/${PYPLATFORM:S|/|\\/|g}/, "$${PYPLATFORM}") }
.endif

.include "../../lang/python/egg.mk"
.include "../../lang/python/tool.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

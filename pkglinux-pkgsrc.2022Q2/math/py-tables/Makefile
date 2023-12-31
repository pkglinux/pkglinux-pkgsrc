# $NetBSD: Makefile,v 1.13 2022/04/15 11:27:41 nia Exp $

DISTNAME=	tables-3.7.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_PYPI:=t/tables/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pytables.org/
COMMENT=	Database package for large amounts of data
LICENSE=	modified-bsd

PYSETUPBUILDARGS+=	--blosc=${BUILDLINK_PREFIX.blosc}
PYSETUPBUILDARGS+=	--bzip2=${BUILDLINK_PREFIX.bzip2}
PYSETUPBUILDARGS+=	--hdf5=${BUILDLINK_PREFIX.hdf5}
PYSETUPBUILDARGS+=	--lzo=${BUILDLINK_PREFIX.lzo}

DEPENDS+=	${PYPKGPREFIX}-packaging-[0-9]*:../../devel/py-packaging
DEPENDS+=	${PYPKGPREFIX}-numexpr>=2.6.2:../../math/py-numexpr

USE_LANGUAGES=	c c++

PYTHON_VERSIONS_INCOMPATIBLE=	27 37

USE_PKG_RESOURCES=	yes

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} pt2to3 pt2to3-${PYVERSSUFFIX} && \
	${MV} ptdump ptdump-${PYVERSSUFFIX} && \
	${MV} ptrepack ptrepack-${PYVERSSUFFIX} && \
	${MV} pttree pttree-${PYVERSSUFFIX} || ${TRUE}

# needs to be installed first
# as of 3.7.0:
# FAILED (errors=2, skipped=55)
do-test:
	${PYTHONBIN} -m tables.tests.test_all

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/lzo/buildlink3.mk"
.include "../../devel/blosc/buildlink3.mk"
.include "../../devel/hdf5/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

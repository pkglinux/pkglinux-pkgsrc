# $NetBSD: Makefile,v 1.48 2022/05/08 12:47:20 gdt Exp $

.include "../../geography/gdal-lib/Makefile.common"
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
#PKGREVISION=	0

COMMENT=	Translator library for raster geospatial data formats, Python binding

BUILD_DIRS=	swig/python

MAKE_FILE=	GNUmakefile

PYTHON_VERSIONS_INCOMPATIBLE=	27 37

REPLACE_PYTHON+=	swig/python/scripts/*py

INSTALLATION_DIRS=	bin

.include "../../mk/bsd.prefs.mk"

#For testing future versions from git:
#EGG_NAME=		GDAL-3.5.0.dev0
EGG_NAME?=		GDAL-${VERSION_BASE}
EGG_INFODIR?=		${EGG_NAME}-py${PYVERSSUFFIX}.egg-info
PLIST_SUBST+=		PYSITELIB=${PYSITELIB}
PLIST_SUBST+=		EGG_NAME=${EGG_NAME}-py${PYVERSSUFFIX}
PLIST_SUBST+=		EGG_INFODIR=${EGG_INFODIR}
PRINT_PLIST_AWK+=	{ gsub(/${EGG_NAME}-py${PYVERSSUFFIX}.egg-info/, \
				"$${EGG_INFODIR}") }

.include "../../geography/gdal-lib/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

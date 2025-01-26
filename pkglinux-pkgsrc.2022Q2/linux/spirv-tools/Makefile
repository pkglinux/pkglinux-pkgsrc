# $NetBSD$

DISTNAME=	SPIRV-Tools-2024.2
PKGNAME=	${DISTNAME:tl}
CATEGORIES=	parallel
MASTER_SITES=	${MASTER_SITE_GITHUB:=KhronosGroup/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	triaxx@NetBSD.org
HOMEPAGE=	https://github.com/KhronosGroup/SPIRV-Tools/
COMMENT=	API and commands for processing SPIR-V modules
LICENSE=	apache-2.0

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
USE_CMAKE=	yes

PKGCONFIG_OVERRIDE+=	cmake/SPIRV-Tools-shared.pc.in
PKGCONFIG_OVERRIDE+=	cmake/SPIRV-Tools.pc.in

WRKSRC=		${WRKDIR}/${DISTNAME}

REPLACE_SH+=	tools/lesspipe/spirv-lesspipe.sh

CFLAGS+=	-Wno-error=array-bounds

CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
#CMAKE_ARGS+=	-DSPIRV-Headers_SOURCE_DIR=${BUILDLINK_PREFIX.spirv-headers}
CMAKE_ARGS+=	-DSPIRV-Headers_SOURCE_DIR=${WRKSRC}/external/

post-extract:
	${TAR} -xzf ${DISTDIR}/SPIRV-Headers-1.3.283.0.tar.gz -C ${WRKSRC}/external/
	cd ${WRKSRC}/external/ && ${MV} SPIRV-Headers* SPIRV-Headers

.include "../../parallel/spirv-headers/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

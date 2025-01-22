# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	OpenCL-SDK-2024.10.24
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=KhronosGroup/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/KhronosGroup/OpenCL-SDK/
COMMENT=	the Khronos OpenCL SDK the components needed
LICENSE=	apache-2.0

WRKSRC=		${WRKDIR}/${DISTNAME}
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

.include "../../parallel/opencl-headers/buildlink3.mk"
.include "../../parallel/opencl-clhpp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

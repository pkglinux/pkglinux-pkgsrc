# $NetBSD: Makefile,v 1.49 2022/04/23 20:25:38 tnn Exp $

DISTNAME=	exiv2-0.27.5-Source
PKGNAME=	${DISTNAME:S/-Source//}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=Exiv2/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.exiv2.org/
COMMENT=	Image metadata manipulation
LICENSE=	gnu-gpl-v2

CHECK_PORTABILITY_SKIP+=	contrib/coverity.sh

USE_CMAKE=	yes
USE_TOOLS+=	msgfmt
USE_LANGUAGES=	c c++
GCC_REQD+=	3.3

.include "../../mk/bsd.prefs.mk"

CMAKE_ARGS+=	-DEXIV2_BUILD_SAMPLES:BOOL=OFF
.if ${OPSYS} == "Darwin"
CMAKE_ARGS+=	-DIntl_INCLUDE_DIR=${BUILDLINK_PREFIX.gettext}/include
.endif

LDFLAGS.Linux+=	-ldl
LDFLAGS.SunOS+=	-lsocket -lnsl

CXXFLAGS.SunOS+=	-fPIC

USE_PKGLOCALEDIR=	yes
PKGCONFIG_OVERRIDE=	config/exiv2.pc.in

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

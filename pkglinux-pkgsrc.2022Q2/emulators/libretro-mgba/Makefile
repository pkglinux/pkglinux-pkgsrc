# $NetBSD: Makefile,v 1.15 2021/12/19 11:37:10 nia Exp $

DISTNAME=	mgba-0.9.3
PKGNAME=	libretro-${DISTNAME}
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_GITHUB:=mgba-emu/}
GITHUB_PROJECT=	mgba

MAINTAINER=	nia@NetBSD.org
HOMEPAGE=	https://docs.libretro.com/library/mgba/
COMMENT=	Libretro core based on the mGBA emulator
LICENSE=	mpl-2.0

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

OPSYSVARS+=	SOEXT
SOEXT.Darwin=	dylib
SOEXT.*=	so
PLIST_SUBST+=	SOEXT=${SOEXT}

WRKSRC=		${WRKDIR}/mgba-${PKGVERSION_NOREV}

CMAKE_ARGS+=	-DUSE_DEBUGGERS=OFF
CMAKE_ARGS+=	-DUSE_GDB_STUB=OFF

CMAKE_ARGS+=	-DUSE_EDITLINE=OFF
CMAKE_ARGS+=	-DUSE_FFMPEG=OFF
CMAKE_ARGS+=	-DUSE_ZLIB=OFF
CMAKE_ARGS+=	-DUSE_MINIZIP=OFF
CMAKE_ARGS+=	-DUSE_PNG=OFF
CMAKE_ARGS+=	-DUSE_LIBZIP=OFF
CMAKE_ARGS+=	-DUSE_SQLITE3=OFF
CMAKE_ARGS+=	-DUSE_LZMA=OFF
CMAKE_ARGS+=	-DUSE_EPOXY=OFF

CMAKE_ARGS+=	-DBUILD_QT=OFF
CMAKE_ARGS+=	-DBUILD_SDL=OFF
CMAKE_ARGS+=	-DBUILD_GL=OFF
CMAKE_ARGS+=	-DBUILD_GLES2=OFF
CMAKE_ARGS+=	-DBUILD_GLES3=OFF

CMAKE_ARGS+=	-DBUILD_LIBRETRO=ON
CMAKE_ARGS+=	-DSKIP_LIBRARY=ON
CMAKE_ARGS+=	-DLIBRETRO_LIBDIR=${PREFIX}/lib/libretro

INSTALLATION_DIRS+=	${PREFIX}/lib/libretro

# Avoid conflicting with emulators/mgba.
post-install:
	${RM} -rf ${DESTDIR}${PREFIX}/share/doc/mGBA
	${RM} -rf ${DESTDIR}${PREFIX}/include/mgba*

.include "../../devel/libelf/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.5 2022/04/20 20:18:07 wiz Exp $

DISTNAME=	imath-3.1.5
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GITHUB:=AcademySoftwareFoundation/}
GITHUB_PROJECT=	Imath
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.openexr.com/
COMMENT=	2D and 3D vector, matrix, and math operations for computer graphics
LICENSE=	modified-bsd

USE_CMAKE=	yes
USE_LANGUAGES=	c c++14
PTHREAD_OPTS=	require

# C++14
GCC_REQD+=	6

PKGCONFIG_OVERRIDE=	config/Imath.pc.in

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.14 2021/12/08 16:06:49 adam Exp $
#

DISTNAME=	task-2.5.3
PKGNAME=	${DISTNAME:S/task/taskwarrior/}
PKGREVISION=	2
CATEGORIES=	time
MASTER_SITES=	http://www.taskwarrior.org/download/

MAINTAINER=	esg@sdf.lonestar.org
HOMEPAGE=	https://taskwarrior.org/
COMMENT=	Open source, command-line, TODO list manager
LICENSE=	mit

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

# C++11 required
GCC_REQD+=	4.8

INSTALLATION_DIRS+=	${PKGMANDIR}/man1 ${PKGMANDIR}/man5

CMAKE_ARGS+=	-DTASK_MAN1DIR=${PREFIX}/${PKGMANDIR}/man1
CMAKE_ARGS+=	-DTASK_MAN5DIR=${PREFIX}/${PKGMANDIR}/man5
CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=release

LDFLAGS.SunOS+=	-lsocket -lnsl

.include "options.mk"

.include "../../devel/libuuid/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

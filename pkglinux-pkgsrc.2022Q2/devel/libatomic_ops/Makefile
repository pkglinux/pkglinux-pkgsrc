# $NetBSD: Makefile,v 1.23 2021/09/14 08:29:08 adam Exp $

DISTNAME=	libatomic_ops-7.6.12
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ivmai/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/ivmai/libatomic_ops
COMMENT=	Multi-platform library of atomic operations by Hans Boehm
LICENSE=	gnu-gpl-v2

USE_LANGUAGES+=		c
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE=	pkgconfig/atomic_ops.pc.in
TEST_TARGET=		check

INSTALL_MAKE_FLAGS=	pkgdatadir=${PREFIX}/share/doc/libatomic_ops

.include "../../mk/bsd.prefs.mk"

.if !empty(MACHINE_PLATFORM:MNetBSD-*-sparc)
CPPFLAGS+=	-DAO_NO_SPARC_V9=1
.endif

.include "../../mk/bsd.pkg.mk"

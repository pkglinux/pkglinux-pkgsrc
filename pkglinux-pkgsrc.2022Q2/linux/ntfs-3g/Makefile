# $NetBSD$

DISTNAME=	ntfs-3g_ntfsprogs-2017.3.23
PKGNAME=	ntfs-3g-2017.3.23
CATEGORIES=	linux
MASTER_SITES=	https://tuxera.com/opensource/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tuxera.com/opensource/
COMMENT=	safe and fast handling of Windows file systems
LICENSE=	gnu-gpl-v2

DISTINFO_FILE=	${.CURDIR}/../../linux/ntfs-3g/distinfo

#ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

#USE_TOOLS+=	gmake pkg-config
#USE_TOOLS+=	autoconf automake gmake m4 makeinfo sed:run tar:build perl

#PKGCONFIG_OVERRIDE+=	libntfs-3g/libntfs-3g.pc.in

#CONFIGURE_ARGS+=	--prefix=${PREFIX}
#CONFIGURE_ARGS+=	--with-fuse=internal

#BUILD_DIRS=		ntfsprogs

post-install:
	${LN} -svf ../bin/ntfs-3g ${DESTDIR}${PREFIX}/sbin/mount.ntfs
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib

.include "../../devel/libuuid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

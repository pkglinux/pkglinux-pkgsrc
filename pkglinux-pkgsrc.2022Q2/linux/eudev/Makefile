# $NetBSD$

#DISTNAME=	eudev-3.2.10
DISTNAME=	eudev-3.2.11
CATEGORIES=	linux
#MASTER_SITES=	https://dev.gentoo.org/~blueness/eudev/
MASTER_SITES=	https://github.com/eudev-project/eudev/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://dev.gentoo.org/~blueness/eudev/
COMMENT=	Programs for dynamic creation of device nodes
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_TOOLS+=		autoconf automake gmake pkg-config
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--bindir=${PREFIX}/sbin
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc
CONFIGURE_ARGS+=	--enable-manpages
CONFIGURE_ARGS+=	--enable-blkid
CONFIGURE_ARGS+=	--enable-kmod
#CONFIGURE_ARGS+=	--disable-selinux
CONFIGURE_ARGS+=	--enable-selinux
CONFIGURE_ARGS+=	--enable-static-programs=udevd,udevadm

PKGCONFIG_OVERRIDE+=	src/libudev/libudev.pc.in
PKGCONFIG_OVERRIDE+=	src/udev/udev.pc.in

post-install:
	${CP} -v ${FILESDIR}/lib/udev/rules.d/* ${DESTDIR}${PREFIX}/lib/udev/rules.d/
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/sbin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/etc/udev ${PREFIX}/native/etc/udev ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib/udev ${PREFIX}/native/lib/udev ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/sbin ${DESTDIR}${PREFIX}/native/sbin
#	lndir.sh ${DESTDIR}${PREFIX}/etc/udev ${DESTDIR}${PREFIX}/native/etc/udev
#	lndir.sh ${DESTDIR}${PREFIX}/lib/udev ${DESTDIR}${PREFIX}/native/lib/udev
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/semodule-utils/buildlink3.mk"

.include "../../devel/gperf/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../linux/kmod/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../devel/libuuid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

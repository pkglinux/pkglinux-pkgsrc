# $NetBSD$

DISTNAME=	kmod-29
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/kernel/kmod/
EXTRACT_SUFX=	.tar.xz
VERSION=	2.3.7

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/kernel/kmod/
COMMENT=	Linux kernel module handling
LICENSE=	gnu-gpl-v2

#USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake gsed

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_PKGLOCALEDIR=	yes

#CONFIGURE_ARGS+=	--prefix=${PREFIX}
#CONFIGURE_ARGS+=	--exec-prefix=${PREFIX}
#CONFIGURE_ARGS+=	--bindir=${PREFIX}/bin
#CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
#CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib
#CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc
#CONFIGURE_ARGS+=	--with-rootlibdir=${PREFIX}/lib
CONFIGURE_ARGS+=	--with-xz
CONFIGURE_ARGS+=	--with-zstd
CONFIGURE_ARGS+=	--with-zlib
#CONFIGURE_ARGS+=	--enable-static
#CONFIGURE_ARGS+=	--enable-static-programs=kmod
#CONFIGURE_ARGS+=	SED=gsed
#CONFIGURE_ARGS+=	libzstd_LIBS=""
#CONFIGURE_ARGS+=	liblzma_LIBS=""
#CONFIGURE_ARGS+=	zlib_LIBS=""

PKGCONFIG_OVERRIDE+=	libkmod/libkmod.pc.in

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/sbin/
.	for _target_ in depmod insmod lsmod modinfo modprobe rmmod
		${LN} -sfv ../bin/kmod ${DESTDIR}${PREFIX}/sbin/${_target_}
.	endfor
	${LN} -sfv kmod ${DESTDIR}${PREFIX}/bin/lsmod
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/sbin/
	cd ${DESTDIR}${PREFIX}/ && find sbin/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../../bin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/sbin/
#	cd ${DESTDIR}${PREFIX}/native/sbin/ && ${LN} -sfv ../../sbin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/lib* .
#	cd ${DESTDIR}${PREFIX}/native/lib/pkgconfig/ && ${LN} -sfv ../../../lib/pkgconfig/*.pc .

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/semodule-utils/buildlink3.mk"

.include "../../archivers/xz/buildlink3.mk"
.include "../../archivers/zstd/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

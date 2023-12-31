# $NetBSD: Makefile,v 1.90 2021/12/23 18:39:30 maya Exp $

DISTNAME=	gmp-6.2.1
PKGREVISION=	2
CATEGORIES=	devel math
MASTER_SITES=	https://gmplib.org/download/gmp/
MASTER_SITES+=	${MASTER_SITE_GNU:=gmp/}
# Use .tar.bz2 distfile so that no extra dependency on archivers/xz
# is needed when building lang/gcc* with option gcc-inplace-math.
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gmplib.org/
COMMENT=	Library for arbitrary precision arithmetic
LICENSE=	gnu-lgpl-v3 OR gnu-gpl-v2

USE_LANGUAGES=		c c++ c99
USE_LIBTOOL=		yes
USE_TOOLS+=		autoconf gm4 makeinfo
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-readline
INFO_FILES=		yes
TEST_TARGET=		check
PKGCONFIG_OVERRIDE+=	gmp.pc.in

WRKSRC=		${WRKDIR}/${DISTNAME:S/a$//}

PLIST_VARS+=		cxx

.include "../../mk/bsd.prefs.mk"

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ENV+=		CC_FOR_BUILD=${NATIVE_CC:Q}
.endif

.if empty(PKGSRC_COMPILER:Msunpro)
CONFIGURE_ARGS+=	--enable-cxx
PLIST.cxx=		yes
.endif

.if !empty(MACHINE_PLATFORM:MIRIX-5.*) && !empty(ABI)
ABI=			o32
.endif

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
.  if !empty(PKGSRC_COMPILER:Msunpro)
# don't use x86 assembly (it doesn't build)
CONFIGURE_ENV+=		MPN_PATH="generic"
.  else
PKG_OPTIONS_VAR=	PKG_OPTIONS.gmp
PKG_SUPPORTED_OPTIONS=	gmp-fat mmx simd
PKG_SUGGESTED_OPTIONS=	gmp-fat
.    include "../../mk/bsd.options.mk"
###
### Support for a "fat" binary on i386, with CPU autodetection.
###
### XXX	Currently, the 'mmx' and 'simd' options imply the same thing,
###	as cpu detection is done at runtime.  Is there a more elegant
###	way to handle this?
###
.    if empty(PKG_OPTIONS:Mgmp-fat) &&	\
        (!empty(PKG_OPTIONS:Mmmx) || !empty(PKG_OPTIONS:Msimd))
PKG_OPTIONS+=	gmp-fat
.    endif
.    if !empty(PKG_OPTIONS:Mgmp-fat)
CONFIGURE_ARGS+=	--enable-fat
.    endif
.  endif
.endif

pre-configure:
	cd ${WRKSRC} && autoconf

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	cd ${DESTDIR}${PREFIX}/ && find include/gmp*.h | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/gmp*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/libgmp* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ && ${LN} -sfv ../../../include/gmp*.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/gmp*.pc .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/libgmp* .

.include "../../mk/bsd.pkg.mk"

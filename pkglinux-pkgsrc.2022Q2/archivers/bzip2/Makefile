# $NetBSD: Makefile,v 1.57 2021/03/15 16:18:32 ryoon Exp $
#

DISTNAME=	bzip2-1.0.8
CATEGORIES=	archivers
MASTER_SITES=	https://sourceware.org/pub/bzip2/
DISTFILES=	# empty

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://sourceware.org/bzip2/
COMMENT=	Block-sorting file compressor
LICENSE=	zlib # ish

REPLACE_SH=	bzdiff bzgrep bzmore

MAKE_JOBS_SAFE=		no
USE_LIBTOOL=		yes

.include "../../mk/compiler.mk"

CFLAGS+=		${CPPFLAGS}
.if !empty(CC_VERSION:Mgcc*)
CFLAGS+=		-Wall -Winline -fomit-frame-pointer
.endif

INSTALLATION_DIRS=	bin include lib ${PKGMANDIR}/man1

do-extract:
	${CP} -r ${FILESDIR} ${WRKSRC}

do-install:
	${LIBTOOL} --mode=install ${INSTALL_LIB} ${WRKSRC}/libbz2.la ${DESTDIR}${PREFIX}/lib
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} ${WRKSRC}/bzip2 ${DESTDIR}${PREFIX}/bin
	${LN} -f ${DESTDIR}${PREFIX}/bin/bzip2 ${DESTDIR}${PREFIX}/bin/bunzip2
	${LN} -f ${DESTDIR}${PREFIX}/bin/bzip2 ${DESTDIR}${PREFIX}/bin/bzcat
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} ${WRKSRC}/bzip2recover ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bzip2.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	cd ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1 && rm -f bunzip2.1 bzcat.1 bzip2recover.1
	${LN} -s bzip2.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bunzip2.1
	${LN} -s bzip2.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bzcat.1
	${LN} -s bzip2.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bzip2recover.1
	${INSTALL_DATA} ${WRKSRC}/bzlib.h ${DESTDIR}${PREFIX}/include
	${INSTALL_SCRIPT} ${WRKSRC}/bzmore ${DESTDIR}${PREFIX}/bin/bzmore
	${LN} -s bzmore ${DESTDIR}${PREFIX}/bin/bzless
	${INSTALL_MAN} ${WRKSRC}/bzmore.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${LN} -s bzmore.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bzless.1
	${INSTALL_SCRIPT} ${WRKSRC}/bzdiff ${DESTDIR}${PREFIX}/bin/bzdiff
	${LN} -s bzdiff ${DESTDIR}${PREFIX}/bin/bzcmp
	${INSTALL_MAN} ${WRKSRC}/bzdiff.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${LN} -s bzdiff.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bzcmp.1
	${INSTALL_SCRIPT} ${WRKSRC}/bzgrep ${DESTDIR}${PREFIX}/bin/bzgrep
	${LN} -s bzgrep ${DESTDIR}${PREFIX}/bin/bzegrep
	${LN} -s bzgrep ${DESTDIR}${PREFIX}/bin/bzfgrep
	${INSTALL_MAN} ${WRKSRC}/bzgrep.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${LN} -s bzgrep.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bzegrep.1
	${LN} -s bzgrep.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bzfgrep.1

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	cd ${DESTDIR}${PREFIX}/ && ${LN} -sfv ${PREFIX}/include/bzlib.h native/usr/include/
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/libbz2.* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/libbz2.so.0.0.0 | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/lib/libbz2.so
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/bz* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/{bzip2,bzcat} | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv bzip2 bunzip2
	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv bzip2 bzcat
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ && ${LN} -sfv ../../../include/bzlib.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/libbz2.* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/libbz2.so.0.0.0 libbz2.so
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
#	cd ${DESTDIR}${PREFIX}/native/usr/bin/ && ${LN} -sfv ../../../bin/bz* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../../bin/{bzip2,bzcat} .
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv bzip2 bunzip2
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv bzip2 bzcat

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.66 2021/11/24 06:55:41 pho Exp $

DISTNAME=		rxvt-2.7.10
PKGREVISION=		10
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rxvt/}

MAINTAINER=		gcw@rxvt.org
HOMEPAGE=		https://sourceforge.net/projects/rxvt
COMMENT=		Low memory usage xterm replacement that supports color
LICENSE=		gnu-gpl-v2

GNU_CONFIGURE=		YES

CONFIGURE_ARGS+=	--enable-utmp \
			--enable-wtmp \
			--enable-lastlog \
			--enable-xpm-background \
			--enable-transparency \
			--enable-menubar \
			--enable-rxvt-scroll \
			--enable-next-scroll \
			--enable-xterm-scroll \
			--enable-xim \
			--enable-ttygid \
			--enable-xgetdefault \
			--enable-frills \
			--enable-linespace \
			--enable-24bit \
			--enable-keepscrolling \
			--enable-mousewheel \
			--enable-greek \
			--enable-slipwheeling \
			--enable-languages \
			--with-encoding=noenc

CONFIGURE_ARGS+=	--with-xpm-includes=${BUILDLINK_PREFIX.libXpm}/include/X11
CONFIGURE_ARGS+=	--with-xpm-library=${BUILDLINK_PREFIX.libXpm}/lib

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS:M*BSD} || ${OPSYS} == "Darwin"
# Make rxvt setuid root so that tty ownership setting and utmp logging
# function correctly.
#
SPECIAL_PERMS=	${PREFIX}/bin/rxvt ${SETUID_ROOT_PERMS}
.endif

CFLAGS.SunOS+=	-DSunOS

# Make sure _NETBSD_SOURCE is defined for updlastlogx
CFLAGS.NetBSD+=	-D_NETBSD_SOURCE

post-patch:
	${MV} ${WRKSRC}/src/feature.h  ${WRKSRC}/src/feature.h.orig
	${SED} < ${WRKSRC}/src/feature.h.orig > ${WRKSRC}/src/feature.h \
		-e "s:/usr/lib/X11/app-defaults:${PREFIX}/lib/X11/app-defaults:"

EGDIR=			share/examples/${PKGBASE}
INSTALLATION_DIRS+=	${EGDIR}/app-defaults
CONF_FILES+=		${EGDIR}/app-defaults/Rxvt ${PREFIX}/lib/X11/app-defaults/Rxvt

post-install:
	${INSTALL_DATA} ${FILESDIR}/Rxvt ${DESTDIR}${PREFIX}/${EGDIR}/app-defaults

.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

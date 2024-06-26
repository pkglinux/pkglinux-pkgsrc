# $NetBSD: Makefile,v 1.6 2020/01/18 23:35:14 rillig Exp $

ATTR_VERS=	2.4.47
PKGNAME=	attr-${ATTR_VERS}
DISTNAME=	attr-${ATTR_VERS}.src
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://download.savannah.gnu.org/releases/attr/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://savannah.nongnu.org/projects/attr
COMMENT=	Commands for Manipulating Filesystem Extended Attributes
LICENSE=	gnu-gpl-v2

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake msgfmt
USE_LIBTOOL=		yes
BUILD_TARGET=		default
INSTALL_SH_OVERRIDE=	no

LDFLAGS.Darwin+=	-lintl
LDFLAGS.NetBSD+=	-lintl

SUBST_CLASSES.Darwin+=	rmldarg
SUBST_CLASSES.SunOS+=	rmldarg
SUBST_STAGE.rmldarg=	pre-configure
SUBST_FILES.rmldarg=	libattr/Makefile
SUBST_SED.rmldarg=	-e '/version-script/d'

pre-install:
	cd ${WRKSRC}/libattr && env ${MAKE_ENV} \
            ${MAKE_PROGRAM} ${INSTALL_MAKE_FLAGS} \
                -f ${MAKE_FILE} install-lib install-dev
	cd ${WRKSRC}/include && env ${MAKE_ENV} \
            ${MAKE_PROGRAM} ${INSTALL_MAKE_FLAGS} \
                -f ${MAKE_FILE} install-dev

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/attr/
	cd ${DESTDIR}${PREFIX}/ && find include/attr/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/{attr,getfattr,setfattr} | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/attr/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/attr/ && ${LN} -sfv ../../../../include/attr/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/libattr* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/libattr* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../../bin/{attr,getfattr,setfattr} .

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#CFLAGS+=	-fPIC
CPPFLAGS+=	-fPIC
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

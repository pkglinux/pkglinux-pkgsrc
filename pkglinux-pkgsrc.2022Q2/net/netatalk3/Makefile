# $NetBSD: Makefile,v 1.47 2022/05/05 08:23:27 nia Exp $

DISTNAME=	netatalk-3.1.13
PKGNAME=	${DISTNAME:C/-/3-/}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netatalk/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	hauke@NetBSD.org
HOMEPAGE=	http://netatalk.sourceforge.net/
COMMENT=	Netatalk AFP file services
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=		yes
USE_TOOLS+=		gmake pkg-config perl:run
GNU_CONFIGURE=		yes
PKG_CONFIG=		yes

PKG_SYSCONFSUBDIR=	netatalk

EGDIR=			${PREFIX}/share/examples/netatalk
CONF_FILES=		${EGDIR}/afp.conf		${PKG_SYSCONFDIR}/afp.conf
CONF_FILES+=		${EGDIR}/extmap.conf		${PKG_SYSCONFDIR}/extmap.conf

RCD_SCRIPTS=		netatalk
RCD_SCRIPT_SRC.netatalk= ${WRKSRC}/distrib/initscripts/rc.netbsd
SMF_SRCDIR=		${WRKSRC}/distrib/initscripts
SMF_METHODS=		netatalk_smf
SMF_MANIFEST=		netatalk.xml

CONFLICTS=		netatalk22-[0-9]* netatalk30-[0-9]* netatalk-[0-9]*
CONFLICTS+=		netatalk-asun-[0-9]* netatalk-umich-[0-9]*

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=		VARBASE
OWN_DIRS+=		${VARBASE}/db/netatalk/CNID ${REAL_ROOT_USER} ${REAL_ROOT_GROUP}

CONFIGURE_ARGS+=	--enable-overwrite
CONFIGURE_ARGS+=	--enable-quota
CONFIGURE_ARGS+=	--libexecdir=${PREFIX}/libexec/netatalk
CONFIGURE_ARGS+=	--sbindir=${PREFIX}/libexec/netatalk
CONFIGURE_ARGS+=	--with-pkgconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-message-dir=${PKG_SYSCONFDIR}/msg
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}/db
CONFIGURE_ARGS+=	--with-uams-path=${PREFIX}/libexec/netatalk/uams
CONFIGURE_ARGS+=	--with-bdb=${BUILDLINK_PREFIX.db5}
CONFIGURE_ARGS+=	--with-ssl-dir=${BUILDLINK_PREFIX.openssl}
CONFIGURE_ARGS+=	--with-libevent-header=${BUILDLINK_PREFIX.libevent}/include
CONFIGURE_ARGS+=	--with-libevent-lib=${BUILDLINK_PREFIX.libevent}/lib
CONFIGURE_ARGS+=	--without-mysql-config
CONFIGURE_ENV+=		MACHINE_ARCH=${MACHINE_ARCH}

# Upstream bug, was supposed to be fixed in 3.0.8?
CFLAGS.SunOS+=		-I/usr/include/kerberosv5

MAKE_DIRS+=		${PKG_SYSCONFDIR}/msg

REPLACE_PYTHON+=	contrib/shell_utils/afpstats
REPLACE_PYTHON+=	libevent/event_rpcgen.py

PLIST_VARS+=		ea
.if ${OPSYS} == "FreeBSD" || ${OPSYS} == "DragonFly" \
	|| ${OPSYS} == "SunOS" || ${OPSYS} == "Linux" \
	|| (${OPSYS} == "NetBSD" && ${OPSYS_VERSION} >= 070000)
PLIST.ea=		yes
.endif

CONFIGURE_ARGS.NetBSD+=	--without-dtrace

CHECK_RELRO_SKIP+=	libexec/netatalk/uams/*.a
CHECK_SSP_SKIP+=	libexec/netatalk/uams/*.a

.include "options.mk"

INSTALLATION_DIRS=	libexec/psffilters etc/netatalk

post-configure:
	${CP} ${FILESDIR}/netatalk_smf.sh ${SMF_SRCDIR}

.if !empty(PKG_OPTIONS:Mpam)
post-install:
	${INSTALL_DATA} ${WRKSRC}/config/pam/netatalk ${DESTDIR}${EGDIR}/netatalk.pam
.endif

BUILDLINK_API_DEPENDS.libevent+=	libevent>=2
.include "../../devel/libevent/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"
.include "../../databases/db5/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.58 2022/04/18 19:11:52 adam Exp $

DISTNAME=	ntopng-5.2.1
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=ntop/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://www.ntop.org/
COMMENT=	Network traffic probe
LICENSE=	gnu-gpl-v3

DEPENDS+=	redis-[0-9]*:../../databases/redis

USE_LANGUAGES=		c c++11
USE_LIBTOOL=		yes
USE_TOOLS+=		autoconf automake bash gmake pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-ndpi-includes=${BUILDLINK_PREFIX.ndpi}/include/ndpi

RCD_SCRIPTS+=		ntopng

CXXFLAGS+=		-std=c++11  # va_copy()

MAKE_FLAGS+=		LUA_LIB=-llua5.4

# Portable types
CFLAGS.SunOS+=		-Du_int8_t=uint8_t
CFLAGS.SunOS+=		-Du_int16_t=uint16_t
CFLAGS.SunOS+=		-Du_int32_t=uint32_t
CFLAGS.SunOS+=		-Du_int64_t=uint64_t
LDFLAGS.SunOS+=		-lresolv

REPLACE_BASH=		httpdocs/misc/ntopng-add-user.sh
REPLACE_BASH+=		httpdocs/misc/ntopng-utils-manage-config.in

SUBST_CLASSES+=		fix-vers
SUBST_STAGE.fix-vers=	pre-configure
SUBST_MESSAGE.fix-vers=	Setting package version.
SUBST_FILES.fix-vers=	configure.ac.in
SUBST_SED.fix-vers=	-e 's,@VERSION@,${PKGVERSION},g'
SUBST_SED.fix-vers+=	-e 's,@SHORT_VERSION@,${PKGVERSION_NOREV},g'

pre-configure:
	cd ${WRKSRC} && ${CP} configure.ac.in configure.ac && autoreconf -fiv

post-build:
	${FIND} ${WRKSRC}/httpdocs -type f -print0 | xargs -0 chmod a-x

post-install:
	${RM} ${DESTDIR}${PREFIX}/share/ntopng/httpdocs/misc/ntopng-utils-manage-updates.in.orig

.include "../../archivers/zstd/buildlink3.mk"
.include "../../databases/hiredis/buildlink3.mk"
.include "../../databases/rrdtool/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../geography/libmaxminddb/buildlink3.mk"
.include "../../lang/lua54/buildlink3.mk"
.include "../../net/GeoIP/buildlink3.mk"
.include "../../net/libpcap/buildlink3.mk"
.include "../../net/ndpi/buildlink3.mk"
.include "../../net/zeromq/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

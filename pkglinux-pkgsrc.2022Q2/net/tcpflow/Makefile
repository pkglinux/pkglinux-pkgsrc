# $NetBSD: Makefile,v 1.39 2022/04/18 19:11:54 adam Exp $

DISTNAME=	tcpflow-1.6.1
PKGREVISION=	6
CATEGORIES=	net security
MASTER_SITES=	http://downloads.digitalcorpora.org/downloads/tcpflow/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/simsong/tcpflow
COMMENT=	Captures data transmitted as part of TCP connections
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=		c c++17
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-o3

CPPFLAGS.SunOS+=	-Du_int8_t=uint8_t -Du_int16_t=uint16_t -DMAP_FILE=0
CPPFLAGS.SunOS+=	-Du_int32_t=uint32_t -Du_int64_t=uint64_t

.include "options.mk"

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../net/libpcap/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

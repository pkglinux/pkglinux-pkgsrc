# $NetBSD: Makefile,v 1.39 2022/04/18 19:10:34 adam Exp $

DISTNAME=	libetonyek-0.1.10
PKGREVISION=	5
CATEGORIES=	converters
MASTER_SITES=	http://dev-www.libreoffice.org/src/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://wiki.documentfoundation.org/DLP/Libraries/libetonyek
COMMENT=	Library for Apple Office suite files
LICENSE=	mpl-2.0

TOOL_DEPENDS+=	gperf-[0-9]*:../../devel/gperf

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config
USE_LANGUAGES=	c c++17

CONFIGURE_ARGS+=	--disable-tests
CONFIGURE_ARGS+=	--without-docs
CONFIGURE_ARGS+=	--with-mdds=2.0

PKGCONFIG_OVERRIDE+=	libetonyek.pc.in

.include "../../devel/liblangtag/buildlink3.mk"
.include "../../converters/libwpd/buildlink3.mk"
.include "../../converters/librevenge/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/mdds/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/glm/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

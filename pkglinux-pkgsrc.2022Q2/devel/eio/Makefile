# $NetBSD: Makefile,v 1.30 2021/12/08 16:01:51 adam Exp $

DISTNAME=	eio-1.7.10
PKGREVISION=	6
CATEGORIES=	devel
MASTER_SITES=	https://download.enlightenment.org/att/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://enlightenment.org/
COMMENT=	Enlightenned Asynchronous Input Output library
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

CONFIGURE_ARGS.SunOS+=	--disable-inotify

INSTALLATION_DIRS=	share/doc/eio

.include "../../mk/compiler.mk"

.if empty(PKGSRC_COMPILER:Msunpro)
BUILDLINK_TRANSFORM+=	rm:-mt
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${WRKSRC}/COPYING \
	    ${DESTDIR}${PREFIX}/share/doc/eio

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/eina/buildlink3.mk"
.include "../../devel/eet/buildlink3.mk"
.include "../../devel/ecore/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../x11/libXScrnSaver/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXdamage/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

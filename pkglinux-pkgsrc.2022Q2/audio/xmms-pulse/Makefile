# $NetBSD: Makefile,v 1.31 2022/03/28 10:43:41 tnn Exp $

DISTNAME=	xmms-pulse-0.9.4
PKGREVISION=	28
CATEGORIES=	audio
MASTER_SITES=	http://0pointer.de/lennart/projects/xmms-pulse/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	XMMS plugin to output sound through the pulseaudio daemon
HOMEPAGE=	http://0pointer.de/lennart/projects/xmms-pulse/
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-lynx
USE_TOOLS+=		pkg-config
USE_LIBTOOL=		yes

.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../audio/xmms/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

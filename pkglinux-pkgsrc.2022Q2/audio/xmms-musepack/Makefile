# $NetBSD: Makefile,v 1.29 2021/12/08 16:03:22 adam Exp $
#

DISTNAME=	xmms-musepack-1.1
PKGREVISION=	10
CATEGORIES=	audio
MASTER_SITES=	http://musepack.imosnet.de/linux/plugins/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.musepack.net/
COMMENT=	XMMS plugin for musepack (mpc) files
LICENSE=	modified-bsd

USE_LANGUAGES=	c c++03
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

.include "../../audio/libmusepack/buildlink3.mk"
.include "../../audio/xmms/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.89 2021/12/08 16:07:15 adam Exp $
#

DISTNAME=	x11vnc-0.9.16
PKGREVISION=	11
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_GITHUB:=LibVNC/}
GITHUB_PROJECT=	x11vnc

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.karlrunge.com/x11vnc/
COMMENT=	VNC server for real X displays
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	autoconf automake autoreconf gmake pkg-config
GNU_CONFIGURE=	yes

PTHREAD_AUTO_VARS=	yes
SUBST_CLASSES+=		pthread
SUBST_STAGE.pthread=	pre-configure
SUBST_FILES.pthread=	configure
SUBST_SED.pthread=	-e 's|-lpthread||g'
SUBST_NOOP_OK.pthread=	yes # configure does not contain "pthread"

.include "options.mk"

pre-configure:
	cd ${WRKSRC} && autoreconf -vif

.include "../../security/openssl/buildlink3.mk"
.include "../../net/libvncserver/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

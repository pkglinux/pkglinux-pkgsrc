# $NetBSD: Makefile,v 1.11 2021/12/08 16:06:28 adam Exp $
#

DISTNAME=	devkitd-jmcneill-003
PKGNAME=	${DISTNAME:S/-jmcneill//}
PKGREVISION=	6
CATEGORIES=	sysutils
#MASTER_SITES=	http://www.invisible.ca/~jmcneill/devkitd/

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://www.invisible.ca/~jmcneill/devkitd/
COMMENT=	NetBSD port of devkitd (for DeviceKit)
LICENSE=	gnu-lgpl-v2 AND gnu-gpl-v2

ONLY_FOR_PLATFORM=	NetBSD-*-*

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

CONF_FILES+=	share/examples/GConf/org.freedesktop.DeviceKit.conf \
		${PKG_SYSCONFBASEDIR}/dbus-1/system.d/org.freedesktop.DeviceKit.conf

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/libdevkit-gobject/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

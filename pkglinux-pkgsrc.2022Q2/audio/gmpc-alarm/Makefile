# $NetBSD: Makefile,v 1.18 2021/12/08 16:03:09 adam Exp $

DISTNAME=	gmpc-alarm-11.8.16
PKGREVISION=	15
CATEGORIES=	audio
MASTER_SITES=	http://download.sarine.nl/Programs/gmpc/11.8/
MASTER_SITES+=	${MASTER_SITE_SOURCEFORGE:=musicpd/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gmpc.wikia.com/wiki/GMPC_PLUGIN_ALARM
COMMENT=	Alarm Timer plugin for GMPC
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	intltool msgfmt pkg-config

.include "../../audio/gmpc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

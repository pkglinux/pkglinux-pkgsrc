# $NetBSD: Makefile,v 1.20 2021/12/08 16:03:15 adam Exp $
#

DISTNAME=		libmpd-11.8.17
PKGREVISION=		2
CATEGORIES=		audio
MASTER_SITES=		http://download.sarine.nl/Programs/gmpc/11.8/
MASTER_SITES+=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://gmpc.wikia.com/?title=Libmpd
COMMENT=		Library to access mpd (musicpd)
LICENSE=		gnu-gpl-v2

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE=	libmpd.pc.in
USE_TOOLS+=		pkg-config

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.16
.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

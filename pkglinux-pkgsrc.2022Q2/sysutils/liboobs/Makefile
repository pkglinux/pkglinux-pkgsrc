# $NetBSD: Makefile,v 1.24 2021/12/08 16:06:33 adam Exp $
#

DISTNAME=		liboobs-2.22.2
PKGREVISION=		15
CATEGORIES=		sysutils gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/liboobs/2.22/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.gnome.org/
COMMENT=		Lightweight GObject based interface to system-tools-backends
LICENSE=		gnu-gpl-v2

.include "options.mk"

GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_LIBTOOL=		YES

.include "../../sysutils/system-tools-backends/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

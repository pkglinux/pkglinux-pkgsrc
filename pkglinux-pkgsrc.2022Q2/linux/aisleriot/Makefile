# $NetBSD$

DISTNAME=	aisleriot-3.9.90
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/aisleriot/3.9/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/aisleriot/3.9/ # TODO: check
COMMENT=	Aisleriot — also known as sol or solitaire
LICENSE=	gnu-gpl-v2

TOOLS_PLATFORM.awk?=		${PREFIX}/bin/nawk
TOOLS_PLATFORM.sed?=		${PREFIX}/bin/nbsed

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

GCONF_SCHEMAS+=	src/aisleriot.schemas

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--with-card-theme-formats=pysol
CONFIGURE_ARGS+=	--with-pysol-card-theme-path=${PREFIX}/share/PySolFC/themes

.include "../../textproc/intltool/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../mk/bsd.pkg.mk"

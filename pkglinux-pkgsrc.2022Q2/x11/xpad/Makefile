# $NetBSD: Makefile,v 1.70 2022/04/18 19:12:27 adam Exp $
#

DISTNAME=	xpad-4.8.0
PKGREVISION=	17
CATEGORIES=	x11
MASTER_SITES=	http://launchpad.net/xpad/trunk/${PKGVERSION_NOREV}/+download/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mterry.name/xpad/
COMMENT=	Sticky notes application for GTK+ 2.0
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/gtksourceview3/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

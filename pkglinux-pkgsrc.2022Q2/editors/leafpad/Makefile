# $NetBSD: Makefile,v 1.54 2021/12/08 16:04:11 adam Exp $

DISTNAME=	leafpad-0.8.18.1
PKGREVISION=	5
CATEGORIES=	editors gnome
MASTER_SITES=	http://savannah.nongnu.org/download/leafpad/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tarot.freeshell.org/leafpad/
COMMENT=	Simple and light text editor using GTK+
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		intltool msgfmt pkg-config gmake
GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.18 2022/02/15 09:22:28 wiz Exp $

DISTNAME=	dmenu-5.1
CATEGORIES=	x11
MASTER_SITES=	http://dl.suckless.org/tools/

MAINTAINER=	leot@NetBSD.org
HOMEPAGE=	http://tools.suckless.org/dmenu
COMMENT=	Dynamic menu for X
LICENSE=	mit

MAKE_JOBS_SAFE=	no

NO_CONFIGURE=	yes
USE_LANGUAGES=	c99

# Adjust config.mk
SUBST_CLASSES+=		makefile
SUBST_STAGE.makefile=	pre-patch
SUBST_MESSAGE.makefile=	Fixing config.mk
SUBST_FILES.makefile=	config.mk
SUBST_SED.makefile+=	-e 's,/usr/local,${PREFIX},g'
SUBST_SED.makefile+=	-e 's,share/man,${PKGMANDIR},g'
SUBST_SED.makefile+=	-e 's,/usr/X11R6,${X11BASE},'
SUBST_SED.makefile+=	-e 's,^CFLAGS *= ,CFLAGS += ,'
SUBST_SED.makefile+=	-e 's,^LDFLAGS *= ,LDFLAGS += ,'
SUBST_SED.makefile+=	-e 's/-I$${FREETYPEINC}/$${FREETYPEINC}/'
SUBST_SED.makefile+=	-e 's,^FREETYPEINC *=.*,FREETYPEINC != freetype-config --cflags,'
SUBST_SED.makefile+=	-e 's/cc/${CC:Q}/'

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "options.mk"

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

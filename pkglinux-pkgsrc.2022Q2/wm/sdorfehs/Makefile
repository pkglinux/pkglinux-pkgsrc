# $NetBSD: Makefile,v 1.7 2022/05/17 18:34:48 pin Exp $

DISTNAME=	sdorfehs-1.4
CATEGORIES=	wm
MASTER_SITES=	${MASTER_SITE_GITHUB:=jcs/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pin@NetBSD.org
HOMEPAGE=	https://github.com/jcs/sdorfehs/
COMMENT=	Tiling window manager descended from ratpoison
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config

SUBST_CLASSES+=		prefix
SUBST_MESSAGE.prefix=	Fixing paths.
SUBST_STAGE.prefix=	pre-configure
SUBST_FILES.prefix+=	Makefile
SUBST_SED.prefix+=	-e 's,/usr/local,${PREFIX},g'
SUBST_SED.prefix+=	-e 's,/usr/X11R6,${X11BASE},g'
SUBST_SED.prefix+=	-e 's,/etc,${PKG_SYSCONFDIR}/,g'

INSTALLATION_DIRS=	bin/ ${PKGMANDIR}/man1/

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

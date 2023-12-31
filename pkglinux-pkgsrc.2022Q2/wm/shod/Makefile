# $NetBSD: Makefile,v 1.6 2022/05/12 09:37:44 pin Exp $

DISTNAME=	shod-2.4.0
CATEGORIES=	wm
MASTER_SITES=	${MASTER_SITE_GITHUB:=phillbush/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/phillbush/shod/
COMMENT=	Hybrid (floating and tiling) tabbed window manager
LICENSE=	mit

SUBST_CLASSES+=		makefile
SUBST_MESSAGE.makefile=	Adjust Makefile
SUBST_STAGE.makefile=	pre-configure
SUBST_FILES.makefile+=	Makefile
SUBST_SED.makefile+=	-e 's,/usr/local,${PREFIX},g'
SUBST_SED.makefile+=	-e 's,/usr/X11R6,${X11BASE},g'
SUBST_SED.makefile+=	-e 's,share/man,${PKGMANDIR},g'
SUBST_SED.makefile+=	-e 's,^CFLAGS *= ,CFLAGS += ,'
SUBST_SED.makefile+=	-e 's,^LDFLAGS *= ,LDFLAGS += ,'
SUBST_SED.makefile+=	-e 's/cc/${CC:Q}/'

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/shod ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/shodc ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/shod.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

DEPENDS+=	wmctrl-[0-9]*:../../wm/wmctrl
DEPENDS+=	sxhkd-[0-9]*:../../x11/sxhkd

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

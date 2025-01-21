# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	tty-solitaire-1.3.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=mpereira/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mpereira/tty-solitaire/
COMMENT=	Ncurses-based klondike solitaire game
LICENSE=	mit

WRKSRC=		${WRKDIR}/${DISTNAME}

NO_CONFIGURE=	yes
USE_TOOLS+=	gmake
#CFLAGS+=	-ldl -lpthread
#LDFLAGS+=	-L${PREFIX}/lib -lncurses -lncursesw -lgnumenu -lgnumenuw -lgnuform -lgnuformw -lgnupanel -lgnupanelw

#GCC_REQD+=		7
#FORTIFY_SUPPORTED=	no

#.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

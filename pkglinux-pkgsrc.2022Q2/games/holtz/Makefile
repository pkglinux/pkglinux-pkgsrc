# $NetBSD: Makefile,v 1.54 2022/01/10 01:46:31 ryoon Exp $

DISTNAME=	holtz-1.4.0
PKGREVISION=	28
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=holtz/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://holtz.sourceforge.io/
COMMENT=	Engine for the abstract strategy games Zèrtz and Dvonn
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../x11/wxGTK28/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

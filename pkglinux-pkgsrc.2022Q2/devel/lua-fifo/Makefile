# $NetBSD: Makefile,v 1.3 2022/02/19 20:43:41 nia Exp $

DISTNAME=	lua-fifo-0.2
PKGNAME=	${DISTNAME:S/lua-/${LUA_PKGPREFIX}-/1}
CATEGORIES=	devel lua
MASTER_SITES=	${MASTER_SITE_GITHUB:=daurnimator/}
GITHUB_PROJECT=	fifo.lua

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/daurnimator/fifo.lua
COMMENT=	FIFO library for Lua
LICENSE=	mit

WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-${PKGVERSION_NOREV}
USE_LANGUAGES=	# none
NO_BUILD=	yes

LUA_USE_BUSTED=	yes

INSTALLATION_DIRS+=	${LUA_LDIR}

do-install:
	${INSTALL_DATA} ${WRKSRC}/fifo.lua \
		${DESTDIR}${PREFIX}/${LUA_LDIR}/fifo.lua

.include "../../lang/lua/module.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.5 2022/02/26 03:58:35 pho Exp $

DISTNAME=	wai-logger-2.4.0
PKGREVISION=	2
CATEGORIES=	www

MAINTAINER=	pho@cielonegro.org
COMMENT=	Logging system for WAI
LICENSE=	modified-bsd

.include "../../sysutils/hs-byteorder/buildlink3.mk"
.include "../../sysutils/hs-fast-logger/buildlink3.mk"
.include "../../www/hs-http-types/buildlink3.mk"
.include "../../net/hs-network/buildlink3.mk"
.include "../../www/hs-wai/buildlink3.mk"
.include "../../mk/haskell.mk"
.include "../../mk/bsd.pkg.mk"

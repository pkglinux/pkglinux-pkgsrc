# $NetBSD: Makefile,v 1.5 2022/02/26 03:58:35 pho Exp $

DISTNAME=	http2-3.0.3
PKGREVISION=	2
CATEGORIES=	www

MAINTAINER=	pho@cielonegro.org
COMMENT=	HTTP/2 library
LICENSE=	modified-bsd

.include "../../devel/hs-async/buildlink3.mk"
.include "../../textproc/hs-case-insensitive/buildlink3.mk"
.include "../../www/hs-http-types/buildlink3.mk"
.include "../../net/hs-network/buildlink3.mk"
.include "../../net/hs-network-byte-order/buildlink3.mk"
.include "../../devel/hs-psqueues/buildlink3.mk"
.include "../../time/hs-time-manager/buildlink3.mk"
.include "../../time/hs-unix-time/buildlink3.mk"
.include "../../mk/haskell.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.3 2022/02/26 03:57:44 pho Exp $

DISTNAME=	hslua-aeson-2.1.0
PKGREVISION=	2
CATEGORIES=	converters

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Allow aeson data types to be used with Lua
LICENSE=	mit

.include "../../converters/hs-aeson/buildlink3.mk"
.include "../../devel/hs-hashable/buildlink3.mk"
.include "../../lang/hs-hslua-core/buildlink3.mk"
.include "../../lang/hs-hslua-marshalling/buildlink3.mk"
.include "../../math/hs-scientific/buildlink3.mk"
.include "../../devel/hs-unordered-containers/buildlink3.mk"
.include "../../devel/hs-vector/buildlink3.mk"
.include "../../mk/haskell.mk"
.include "../../mk/bsd.pkg.mk"

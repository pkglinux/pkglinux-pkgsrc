# $NetBSD: buildlink3.mk,v 1.5 2021/12/08 16:02:15 adam Exp $

BUILDLINK_TREE+=	ghc

.if !defined(GHC_BUILDLINK3_MK)
GHC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ghc+=	ghc>=8.0.2<8.1
BUILDLINK_ABI_DEPENDS.ghc+=	ghc>=8.0.2nb5
BUILDLINK_PKGSRCDIR.ghc?=	../../lang/ghc80

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.endif	# GHC_BUILDLINK3_MK

BUILDLINK_TREE+=	-ghc

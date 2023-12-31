# $NetBSD: buildlink3.mk,v 1.11 2021/09/30 08:33:21 wiz Exp $

BUILDLINK_TREE+=	libslang2

.if !defined(LIBSLANG2_BUILDLINK3_MK)
LIBSLANG2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libslang2+=	libslang2>=2.1.3
BUILDLINK_ABI_DEPENDS.libslang2+=	libslang2>=2.2.4nb3
BUILDLINK_PKGSRCDIR.libslang2?=	../../devel/libslang2
BUILDLINK_FNAME_TRANSFORM.libslang2+=	-e 's|include/slang2/|include/|g'
BUILDLINK_TRANSFORM+=		l:slang:slang2
pkgbase:=	libslang2
.include "../../mk/pkg-build-options.mk"

.if ${PKG_BUILD_OPTIONS.libslang2:Mpng}
.  include "../../graphics/png/buildlink3.mk"
.endif
.if ${PKG_BUILD_OPTIONS.libslang2:Mpcre}
.  include "../../devel/pcre/buildlink3.mk"
.endif
.if ${PKG_BUILD_OPTIONS.libslang2:Moniguruma}
.  include "../../textproc/oniguruma/buildlink3.mk"
.endif

.include "../../mk/termcap.buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.endif # LIBSLANG2_BUILDLINK3_MK

BUILDLINK_TREE+=	-libslang2

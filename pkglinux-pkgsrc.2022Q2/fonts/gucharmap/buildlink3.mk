# $NetBSD: buildlink3.mk,v 1.64 2022/04/18 19:09:50 adam Exp $

BUILDLINK_TREE+=	gucharmap

.if !defined(GUCHARMAP_BUILDLINK3_MK)
GUCHARMAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gucharmap+=	gucharmap>=2.24.1
BUILDLINK_ABI_DEPENDS.gucharmap+=	gucharmap>=2.32.1nb35
BUILDLINK_PKGSRCDIR.gucharmap?=		../../fonts/gucharmap

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.endif # GUCHARMAP_BUILDLINK3_MK

BUILDLINK_TREE+=	-gucharmap

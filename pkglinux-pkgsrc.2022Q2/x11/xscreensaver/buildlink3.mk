# $NetBSD: buildlink3.mk,v 1.17 2022/04/18 19:10:18 adam Exp $

BUILDLINK_TREE+=	xscreensaver

.if !defined(XSCREENSAVER_BUILDLINK3_MK)
XSCREENSAVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xscreensaver+=	xscreensaver>=4.14
BUILDLINK_ABI_DEPENDS.xscreensaver+=	xscreensaver>=6.03nb1
BUILDLINK_PKGSRCDIR.xscreensaver?=	../../x11/xscreensaver

.include "../../textproc/libxml2/buildlink3.mk"
.endif # XSCREENSAVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-xscreensaver

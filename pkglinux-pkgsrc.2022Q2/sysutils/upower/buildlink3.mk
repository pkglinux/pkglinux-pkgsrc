# $NetBSD: buildlink3.mk,v 1.4 2021/12/08 16:02:40 adam Exp $

BUILDLINK_TREE+=	upower

.if !defined(UPOWER_BUILDLINK3_MK)
UPOWER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.upower+=	upower>=0.99.8
BUILDLINK_ABI_DEPENDS.upower?=	upower>=0.99.13
BUILDLINK_PKGSRCDIR.upower?=	../../sysutils/upower

.include "../../devel/glib2/buildlink3.mk"
.endif	# UPOWER_BUILDLINK3_MK

BUILDLINK_TREE+=	-upower

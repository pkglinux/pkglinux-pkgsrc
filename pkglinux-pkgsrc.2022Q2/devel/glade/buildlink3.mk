# $NetBSD: buildlink3.mk,v 1.9 2022/04/18 19:09:44 adam Exp $

BUILDLINK_TREE+=	glade

.if !defined(GLADE_BUILDLINK3_MK)
GLADE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.glade+=	glade>=3.22.0
BUILDLINK_ABI_DEPENDS.glade+=	glade>=3.36.0nb5
BUILDLINK_PKGSRCDIR.glade?=	../../devel/glade

.include "../../x11/gtk3/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif # GLADE_BUILDLINK3_MK

BUILDLINK_TREE+=	-glade

# $NetBSD: buildlink3.mk,v 1.12 2021/12/08 16:01:53 adam Exp $

BUILDLINK_TREE+=	gobject-introspection

.if !defined(GOBJECT_INTROSPECTION_BUILDLINK3_MK)
GOBJECT_INTROSPECTION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gobject-introspection+=	gobject-introspection>=0.6.14nb1
BUILDLINK_ABI_DEPENDS.gobject-introspection+=	gobject-introspection>=1.68.0
BUILDLINK_PKGSRCDIR.gobject-introspection?=	../../devel/gobject-introspection

ALL_ENV+=	GI_SCANNER_DISABLE_CACHE=yes

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.endif	# GOBJECT_INTROSPECTION_BUILDLINK3_MK

BUILDLINK_TREE+=	-gobject-introspection

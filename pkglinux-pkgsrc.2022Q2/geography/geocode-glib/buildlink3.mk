# $NetBSD: buildlink3.mk,v 1.2 2021/12/08 16:02:06 adam Exp $

BUILDLINK_TREE+=	geocode-glib

.if !defined(GEOCODE_GLIB_BUILDLINK3_MK)
GEOCODE_GLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.geocode-glib+=	geocode-glib>=3.26.2
BUILDLINK_ABI_DEPENDS.geocode-glib?=	geocode-glib>=3.26.2nb2
BUILDLINK_PKGSRCDIR.geocode-glib?=	../../geography/geocode-glib

.include "../../devel/glib2/buildlink3.mk"
.endif	# GEOCODE_GLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-geocode-glib

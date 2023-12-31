# $NetBSD: buildlink3.mk,v 1.3 2021/11/15 22:53:59 wiz Exp $

BUILDLINK_TREE+=	gstreamermm

.if !defined(GSTREAMERMM_BUILDLINK3_MK)
GSTREAMERMM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gstreamermm+=	gstreamermm>=1.10.0
BUILDLINK_ABI_DEPENDS.gstreamermm?=	gstreamermm>=1.10.0nb6
BUILDLINK_PKGSRCDIR.gstreamermm?=	../../multimedia/gstreamermm1

.include "../../devel/glibmm/buildlink3.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.endif	# GSTREAMERMM_BUILDLINK3_MK

BUILDLINK_TREE+=	-gstreamermm

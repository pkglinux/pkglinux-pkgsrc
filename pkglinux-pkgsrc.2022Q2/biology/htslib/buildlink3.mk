# $NetBSD: buildlink3.mk,v 1.7 2022/02/26 23:08:43 bacon Exp $

BUILDLINK_TREE+=	htslib

.if !defined(HTSLIB_BUILDLINK3_MK)
HTSLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.htslib+=	htslib>=1.14
BUILDLINK_ABI_DEPENDS.htslib+=	htslib>=1.14
BUILDLINK_PKGSRCDIR.htslib?=	../../biology/htslib

.endif	# HTSLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-htslib

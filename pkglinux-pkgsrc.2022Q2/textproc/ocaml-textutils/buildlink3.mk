# $NetBSD: buildlink3.mk,v 1.3 2022/05/05 11:22:01 jaapb Exp $

BUILDLINK_TREE+=	ocaml-textutils

.if !defined(OCAML_TEXTUTILS_BUILDLINK3_MK)
OCAML_TEXTUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-textutils+=	ocaml-textutils>=0.12.0
BUILDLINK_ABI_DEPENDS.ocaml-textutils+=	ocaml-textutils>=0.15.0
BUILDLINK_PKGSRCDIR.ocaml-textutils?=	../../textproc/ocaml-textutils

.endif	# OCAML_TEXTUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-textutils

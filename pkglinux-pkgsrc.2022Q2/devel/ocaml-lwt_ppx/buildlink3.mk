# $NetBSD: buildlink3.mk,v 1.8 2022/05/02 14:07:16 jaapb Exp $

BUILDLINK_TREE+=	ocaml-lwt_ppx

.if !defined(OCAML_LWT_PPX_BUILDLINK3_MK)
OCAML_LWT_PPX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-lwt_ppx+=	ocaml-lwt_ppx>=2.0.0
BUILDLINK_ABI_DEPENDS.ocaml-lwt_ppx+=	ocaml-lwt_ppx>=2.0.3
BUILDLINK_PKGSRCDIR.ocaml-lwt_ppx?=	../../devel/ocaml-lwt_ppx

.include "../../devel/ocaml-lwt/buildlink3.mk"
.endif	# OCAML_LWT_PPX_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-lwt_ppx

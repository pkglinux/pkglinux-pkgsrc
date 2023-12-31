# $NetBSD: buildlink3.mk,v 1.3 2022/05/05 08:31:12 jaapb Exp $

BUILDLINK_TREE+=	ocaml-async_rpc_kernel

.if !defined(OCAML_ASYNC_RPC_KERNEL_BUILDLINK3_MK)
OCAML_ASYNC_RPC_KERNEL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-async_rpc_kernel+=	ocaml-async_rpc_kernel>=0.12.0
BUILDLINK_ABI_DEPENDS.ocaml-async_rpc_kernel+=	ocaml-async_rpc_kernel>=0.15.0
BUILDLINK_PKGSRCDIR.ocaml-async_rpc_kernel?=	../../devel/ocaml-async_rpc_kernel

.endif	# OCAML_ASYNC_RPC_KERNEL_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-async_rpc_kernel

# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.18.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.SPIRV-Headers-vulkan?=	build

BUILDLINK_TREE+=	SPIRV-Headers-vulkan

.if !defined(SPIRV_HEADERS_VULKAN_BUILDLINK3_MK)
SPIRV_HEADERS_VULKAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SPIRV-Headers-vulkan+=	SPIRV-Headers-vulkan>=1.3.283.0
BUILDLINK_PKGSRCDIR.SPIRV-Headers-vulkan?=	../../linux/spirv-headers
.endif	# SPIRV_HEADERS_VULKAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-SPIRV-Headers-vulkan

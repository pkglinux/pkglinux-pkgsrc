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
# XXX	BUILDLINK_DEPMETHOD.elfutils?=	build

BUILDLINK_TREE+=	elfutils

.if !defined(ELFUTILS_BUILDLINK3_MK)
ELFUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.elfutils+=	elfutils>=0.178
BUILDLINK_PKGSRCDIR.elfutils?=	../../linux/elfutils
.endif	# ELFUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-elfutils

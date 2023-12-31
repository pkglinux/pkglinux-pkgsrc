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
# XXX	BUILDLINK_DEPMETHOD.native-glibc-x32?=	build

BUILDLINK_TREE+=	native-glibc-x32

.if !defined(NATIVE_GLIBC_X32_BUILDLINK3_MK)
NATIVE_GLIBC_X32_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.native-glibc-x32+=	native-glibc-x32>=2.31
BUILDLINK_PKGSRCDIR.native-glibc-x32?=	../../native/glibc-x32

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../devel/gettext-lib/buildlink3.mk"
.endif	# NATIVE_GLIBC_X32_BUILDLINK3_MK

BUILDLINK_TREE+=	-native-glibc-x32

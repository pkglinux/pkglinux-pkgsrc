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
# XXX	BUILDLINK_DEPMETHOD.gdbm?=	build

BUILDLINK_TREE+=	gdbm

.if !defined(GDBM_BUILDLINK3_MK)
GDBM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gdbm+=	gdbm>=1.23
BUILDLINK_PKGSRCDIR.gdbm?=	../../databases/gdbm

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.endif	# GDBM_BUILDLINK3_MK

BUILDLINK_TREE+=	-gdbm

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
# XXX	BUILDLINK_DEPMETHOD.audit-userspace?=	build

BUILDLINK_TREE+=	audit-userspace

.if !defined(AUDIT_USERSPACE_BUILDLINK3_MK)
AUDIT_USERSPACE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.audit-userspace+=	audit-userspace>=3.1
BUILDLINK_PKGSRCDIR.audit-userspace?=	../../selinux/audit

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../security/openssl/buildlink3.mk"
.endif	# AUDIT_USERSPACE_BUILDLINK3_MK

BUILDLINK_TREE+=	-audit-userspace

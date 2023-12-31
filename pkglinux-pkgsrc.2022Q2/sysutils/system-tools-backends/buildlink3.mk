# $NetBSD: buildlink3.mk,v 1.9 2021/12/08 16:02:40 adam Exp $

BUILDLINK_TREE+=	system-tools-backends

.if !defined(SYSTEM_TOOLS_BACKENDS_BUILDLINK3_MK)
SYSTEM_TOOLS_BACKENDS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.system-tools-backends+=	system-tools-backends>=2.6.0
BUILDLINK_ABI_DEPENDS.system-tools-backends+=	system-tools-backends>=2.6.1nb20
BUILDLINK_PKGSRCDIR.system-tools-backends?=	../../sysutils/system-tools-backends

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.endif # SYSTEM_TOOLS_BACKENDS_BUILDLINK3_MK

BUILDLINK_TREE+=	-system-tools-backends

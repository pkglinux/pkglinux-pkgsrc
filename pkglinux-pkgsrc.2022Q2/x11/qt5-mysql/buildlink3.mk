# $NetBSD: buildlink3.mk,v 1.36 2021/12/08 16:02:58 adam Exp $

BUILDLINK_TREE+=	qt5-mysql

.if !defined(QT5_MYSQL_BUILDLINK3_MK)
QT5_MYSQL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-mysql+=	qt5-mysql>=5.5.1
BUILDLINK_ABI_DEPENDS.qt5-mysql+=	qt5-mysql>=5.15.2nb3
BUILDLINK_PKGSRCDIR.qt5-mysql?=		../../x11/qt5-mysql

BUILDLINK_LIBDIRS.qt5-mysql+=		qt5/plugins

.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# QT5_MYSQL_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-mysql

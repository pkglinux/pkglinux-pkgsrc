# $NetBSD: Makefile,v 1.22 2022/04/18 19:09:42 adam Exp $

DISTNAME=	kldap-${KAPPSVER}
PKGREVISION=	6
CATEGORIES=	databases

HOMEPAGE=	https://community.kde.org/KDE_PIM
COMMENT=	LDAP access API for KDE
LICENSE=	gnu-lgpl-v2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

.include "../../databases/openldap-client/buildlink3.mk"
.include "../../devel/kio/buildlink3.mk"
.include "../../security/cyrus-sasl/buildlink3.mk"
.include "../../textproc/kcompletion/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	selinux-python-3.5
CATEGORIES=	selinux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	SELinux python tools and libraries (semanage, sepolgen, sepolicy, etc.)
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

MAKE_ENV+=		SHAREDIR=${PREFIX}/var/lib/sepolgen

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/usr/sbin ${DESTDIR}

.include "../../selinux/audit/buildlink3.mk"
.include "../../selinux/libselinux/buildlink3.mk"
.include "../../selinux/libsepol/buildlink3.mk"
.include "../../selinux/libsemanage/buildlink3.mk"
.include "../../selinux/semodule-utils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

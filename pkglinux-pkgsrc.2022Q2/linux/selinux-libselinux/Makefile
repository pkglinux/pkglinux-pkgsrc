# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	libselinux-3.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	Library for security-aware applications.
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	src/libselinux.pc.in

post-install:
	lndir.sh -l sf ${PREFIX}/share/man ${PREFIX}/man ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/sbin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}

.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

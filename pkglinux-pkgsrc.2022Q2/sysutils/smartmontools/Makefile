# $NetBSD: Makefile,v 1.45 2022/05/10 07:01:28 triaxx Exp $

DISTNAME=		smartmontools-7.3
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://smartmontools.sourceforge.net/
COMMENT=		Control and monitor storage systems using SMART
LICENSE=		gnu-gpl-v2

ONLY_FOR_PLATFORM=	Darwin-*-* DragonFly-*-* FreeBSD-*-* Linux-*-*
ONLY_FOR_PLATFORM+=	NetBSD-*-* OpenBSD-*-* SunOS-*-*

CHECK_PORTABILITY_SKIP+=	os_darwin/pkg/root/usr/local/sbin/smart-pkg-uninstall

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes

BUILD_DEFS+=		VARBASE

OWN_DIRS=		${PKG_SYSCONFDIR}/smartd_warning.d
OWN_DIRS+=		${VARBASE}/run

EGDIR=			${PREFIX}/share/examples/smartmontools
CONF_FILES=		${EGDIR}/smartd.conf ${PKG_SYSCONFDIR}/smartd.conf
CONF_FILES_PERMS=	${EGDIR}/smartd_warning.sh \
			${PKG_SYSCONFDIR}/smartd_warning.sh \
			${REAL_ROOT_USER} ${REAL_ROOT_GROUP} 0755
RCD_SCRIPTS=		smartd

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/smartmontools
CONFIGURE_ARGS+=	--with-scriptpath=${PREFIX}/bin:${PREFIX}/sbin:/usr/bin:/usr/sbin:/bin:/sbin
INSTALL_MAKE_FLAGS=	${MAKE_FLAGS} sysconfdir=${EGDIR}

INSTALLATION_DIRS=	${EGDIR}

.include "../../mk/bsd.pkg.mk"

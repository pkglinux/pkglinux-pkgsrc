# $NetBSD: Makefile,v 1.45 2021/07/10 18:32:15 dholland Exp $

DISTNAME=		openntpd-6.0p1
PKGREVISION=		1
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_OPENBSD:=OpenNTPD/}

MAINTAINER=		henson@acm.org
HOMEPAGE=		http://www.openntpd.org/
COMMENT=		Free implementation of the Network Time Protocol
LICENSE=		isc

CONFLICTS+=		ntp-[0-9]*

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--disable-https-constraint

SUBST_CLASSES+=		ntpd_m1
SUBST_CLASSES+=		ntpd_m2
SUBST_STAGE.ntpd_m1=	pre-build
SUBST_STAGE.ntpd_m2=	pre-build
SUBST_FILES.ntpd_m1=	src/ntpd.8
SUBST_FILES.ntpd_m2=	src/ntpd.8 src/ntpctl.8
SUBST_SED.ntpd_m1+=	-e 's,/var/db/,${VARBASE}/db/openntpd/,g'
SUBST_SED.ntpd_m2+=	-e 's,/var/run/,${VARBASE}/run/,g'

SUBST_CLASSES+=		ntpd_h
SUBST_STAGE.ntpd_h=	pre-build
SUBST_FILES.ntpd_h=	src/ntpd.h
SUBST_SED.ntpd_h+=	-e 's,/db/ntpd.drift,/db/openntpd/ntpd.drift,g'

EGDIR=			${PREFIX}/share/examples/openntpd
CONF_FILES=		${EGDIR}/ntpd.conf ${PKG_SYSCONFDIR}/ntpd.conf

RCD_SCRIPTS=		openntpd
PKG_GROUPS=		_ntp
PKG_USERS=		_ntp:_ntp
PKG_HOME._ntp=		${VARBASE}/chroot/ntpd

BUILD_DEFS+=		VARBASE

OWN_DIRS=		${VARBASE}/chroot/ntpd ${VARBASE}/db/openntpd
AUTO_MKDIRS=		yes

INSTALLATION_DIRS+=	sbin ${PKGMANDIR}/man5 ${PKGMANDIR}/man8 ${EGDIR}
INSTALLATION_DIRS+=	native/etc/init.d native/etc/runlevels/default

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/ntpd ${DESTDIR}${PREFIX}/sbin/ntpd
	ln ${DESTDIR}${PREFIX}/sbin/ntpd ${DESTDIR}${PREFIX}/sbin/ntpctl
	${INSTALL_MAN} ${WRKSRC}/src/ntpd.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/ntpd.8
	${INSTALL_MAN} ${WRKSRC}/src/ntpctl.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/ntpctl.8
	${INSTALL_MAN} ${WRKSRC}/src/ntpd.conf.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5/ntpd.conf.5
	${INSTALL_DATA} ${WRKSRC}/ntpd.conf ${DESTDIR}${EGDIR}/ntpd.conf
	${INSTALL_SCRIPT} ${FILESDIR}/init.d/ntpd ${DESTDIR}${PREFIX}/native/etc/init.d
	cd ${DESTDIR}${PREFIX}/native/etc/runlevels/default && ln -snvf ${PREFIX}/native/etc/init.d/ntpd .

.include "../../mk/bsd.pkg.mk"

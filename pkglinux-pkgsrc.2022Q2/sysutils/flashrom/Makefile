# $NetBSD: Makefile,v 1.15 2022/05/13 15:43:19 wiz Exp $

DISTNAME=	flashrom-v1.2
PKGNAME=	${DISTNAME:S/-v/-/}
PKGREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	https://download.flashrom.org/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jakllsch@NetBSD.org
HOMEPAGE=	https://www.flashrom.org/
COMMENT=	Universal (coreboot/LinuxBIOS) flash utility
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkg-config

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
DEPENDS+=	dmidecode-[0-9]*:../../sysutils/dmidecode
.endif

SUBST_CLASSES.NetBSD+=	pciutils
SUBST_CLASSES.SunOS+=	pciutils
SUBST_FILES.pciutils=	Makefile
SUBST_FILES.pciutils+=	hwaccess.h
SUBST_MESSAGE.pciutils=	adjusting pciutils headers
SUBST_STAGE.pciutils=	pre-configure
SUBST_SED.pciutils+=	-e 's,<pciutils/pci.h>,<pci/pci.h>,g'

.if ${OPSYS} == "SunOS"
LDFLAGS+=	-lpci
CPPFLAGS+=	-I/${PREFIX}/include
.endif

LDFLAGS.SunOS+=		-lsocket -lnsl

# Disable -Werror.
MAKE_ENV+=		WARNERROR=no

INSTALLATION_DIRS=	sbin ${PKGMANDIR}/man8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flashrom ${DESTDIR}${PREFIX}/sbin/flashrom
	${INSTALL_MAN} ${WRKSRC}/flashrom.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/flashrom.8

.include "../../devel/libftdi1/buildlink3.mk"
BUILDLINK_API_DEPENDS.pciutils+=	pciutils>=3.8
.include "../../sysutils/pciutils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

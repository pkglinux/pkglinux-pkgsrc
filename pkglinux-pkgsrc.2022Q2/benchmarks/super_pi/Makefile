# $NetBSD: Makefile,v 1.5 2022/02/28 10:01:18 wiz Exp $

DISTNAME=		super_pi
PKGNAME=		super_pi-20030927
CATEGORIES=		benchmarks math
MASTER_SITES=		ftp://pi.super-computing.org/Linux/
MASTER_SITES+=		http://www.phoronix-test-suite.com/benchmark-files/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		ftp://pi.super-computing.org/Linux/
COMMENT=		Pi calculation program, used for stability testing (binary)
LICENSE=		generic-nonlicense

RESTRICTED=		${LICENSE}
NO_BIN_ON_FTP=		${RESTRICTED}
NO_SRC_ON_FTP=		${RESTRICTED}

DIST_SUBDIR=		${PKGNAME_NOREV}

INSTALLATION_DIRS=	bin

EMUL_PLATFORMS=		linux-i386
EMUL_MODULES.linux=	base

CHECK_PIE_SUPPORTED=	no
CHECK_RELRO_SUPPORTED=	no

WRKSRC=			${WRKDIR}

do-build:

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pi ${DESTDIR}${PREFIX}/bin/super_pi

.include "../../mk/bsd.pkg.mk"

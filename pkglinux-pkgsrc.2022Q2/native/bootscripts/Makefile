# $NetBSD$

PKGNAME=	bootscripts-1.0
CATEGORIES=	native
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	sysv init scripts
LICENSE=	mit

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/2022Q2/bin/nawk
#TOOLS_PLATFORM.sed?=		/2022Q2/bin/nbsed
TOOLS_PLATFORM.awk?=		/2022Q2/bin/gawk
TOOLS_PLATFORM.sed?=		/2022Q2/bin/gsed

USE_LANGUAGES=	# none
NO_CHECKSUM=		yes
HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

RCD_SCRIPTS=		nscd

do-install:
	${CP} -av ${FILESDIR}/native ${DESTDIR}${PREFIX}/
	${CP} -av ${FILESDIR}/lndir ${DESTDIR}${PREFIX}/native/sbin/
	${CP} -av ${FILESDIR}/lib ${DESTDIR}${PREFIX}/
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/etc ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/lib ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}

#	${CP} -av /pkg/sbin/start-stop-daemon ${DESTDIR}${PREFIX}/native/sbin/
# make sure "/pkg/sbin/start-stop-daemon" is available
#BUILD_DEPENDS+=	dpkg-[0-9]*:../../linux/dpkg

#.include "../../native/debianutils/buildlink3.mk"
#.include "../../native/insserv/buildlink3.mk"
#.include "../../native/startpar/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.49 2022/06/06 12:12:47 martin Exp $

DISTNAME=	mserv-0.35
PKGREVISION=	24
CATEGORIES=	audio
#MASTER_SITES=	http://www.mserv.org/download/

MAINTAINER=	martin@NetBSD.org
#HOMEPAGE=	http://www.mserv.org/
COMMENT=	Local centralised music server environment
LICENSE=	original-bsd

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/mserv
CONFIGURE_ENV+=		COPTS="-g"
CONFIGURE_ENV+=		MY_LIBS="-lvorbisfile -lvorbis"
USE_LIBTOOL=		yes
USE_TOOLS+=		perl:run

REPLACE_PERL=		support/mservedit webclient/main.cgi \
			webclient/margin.cgi webclient/mserv.cgi

LDFLAGS.SunOS+=	-lnsl -lsocket

post-configure:
	${MV} ${WRKSRC}/mserv/soundcard.h ${WRKSRC}/mserv/mservsoundcard.h

INSTALLATION_DIRS+=	share/doc/mserv share/mserv/webclient

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/support/mservedit ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} \
		${WRKSRC}/INSTALL \
		${WRKSRC}/LICENSE \
		${DESTDIR}${PREFIX}/share/doc/mserv
	${INSTALL_DATA} \
		${WRKSRC}/webclient/* \
		${DESTDIR}${PREFIX}/share/mserv/webclient

.include "../../audio/libvorbis/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"

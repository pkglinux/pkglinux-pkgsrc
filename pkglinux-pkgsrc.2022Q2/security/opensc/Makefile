# $NetBSD: Makefile,v 1.36 2022/04/18 19:12:00 adam Exp $

DISTNAME=	opensc-0.20.0
PKGREVISION=	6
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=OpenSC/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/OpenSC/OpenSC/wiki
COMMENT=	Smart Card drivers and middleware
LICENSE=	gnu-lgpl-v2.1

WRKSRC=		${WRKDIR}/OpenSC-${PKGVERSION_NOREV}

BUILD_DEPENDS+=		docbook-xsl-[0-9]*:../../textproc/docbook-xsl

USE_LIBTOOL=		yes
USE_TOOLS+=		autoreconf autoconf automake gmake pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-autostart-items
CONFIGURE_ARGS+=	--disable-strict  # avoid -Werror
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
# The stylesheets are not found without this.
CONFIGURE_ARGS+=	--with-xsl-stylesheetsdir=${PREFIX}/share/xsl/docbook
# This is perhaps an upstream bug.
CONFIGURE_ENV+=		PCSC_CFLAGS=-I${PREFIX}/include/PCSC

.include "options.mk"

EGDIR=			${PREFIX}/share/examples/opensc
CONF_FILES+=		${EGDIR}/opensc.conf ${PKG_SYSCONFDIR}/opensc.conf

pre-configure:
	cd ${WRKSRC} && autoreconf -fi

INSTALLATION_DIRS=	${EGDIR}
post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/opensc.conf.example ${DESTDIR}${EGDIR}/opensc.conf

# build tools for doc; should be TOOLS
.include "../../textproc/libxslt/buildlink3.mk"

# We avoid pthreads intentionally; tell dlopen not drag it in.
DLOPEN_REQUIRE_PTHREADS=	no
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/readline.buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.69 2022/04/18 19:12:25 adam Exp $

PKGREVISION= 22
.include "../../x11/qt4-libs/Makefile.common"

PKGNAME=	qt4-sqlite3-${QTVERSION}
COMMENT=	Qt4 sqlite3 driver

CONFIGURE_ARGS+=	-I${QTDIR}/include
CONFIGURE_ARGS+=	-L${QTDIR}/lib
CONFIGURE_ARGS+=	-system-sqlite

BUILD_QT4=		yes
USE_TOOLS+=		pkg-config
TOOLS_BROKEN+=		perl

do-build:
	cd ${WRKSRC}/src/tools/bootstrap && env ${MAKE_ENV} ${GMAKE}
	cd ${WRKSRC}/src/tools/moc && env ${MAKE_ENV} ${GMAKE}
	cd ${WRKSRC}/src/plugins/sqldrivers/sqlite && env ${MAKE_ENV} ${GMAKE}

SQLDRVDIR=		${QTPREFIX}/plugins/sqldrivers
INSTALLATION_DIRS=	${SQLDRVDIR}

do-install:
	${LIBTOOL} --mode=install ${INSTALL_LIB} ${WRKSRC}/plugins/sqldrivers/libqsqlite.la \
		${DESTDIR}${SQLDRVDIR}

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

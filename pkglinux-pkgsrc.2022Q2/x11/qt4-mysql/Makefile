# $NetBSD: Makefile,v 1.49 2021/12/08 16:07:12 adam Exp $

PKGREVISION= 8
.include "../../x11/qt4-libs/Makefile.common"

PKGNAME=	qt4-mysql-${QTVERSION}
COMMENT=	QT mysql driver

TOOLS_BROKEN+=		perl

CONFIGURE_ARGS+=	-I${QTDIR}/include
CONFIGURE_ARGS+=	-L${QTDIR}/lib

BUILD_QT4=		yes

do-build:
	cd ${WRKSRC}/src/tools/bootstrap && env ${MAKE_ENV} ${GMAKE}
	cd ${WRKSRC}/src/tools/moc && env ${MAKE_ENV} ${GMAKE}
	cd ${WRKSRC}/src/plugins/sqldrivers/mysql && env ${MAKE_ENV} ${GMAKE}

SQLDRVDIR=		${QTPREFIX}/plugins/sqldrivers
INSTALLATION_DIRS=	${SQLDRVDIR}

do-install:
	${LIBTOOL} --mode=install ${INSTALL_LIB} ${WRKSRC}/plugins/sqldrivers/libqsqlmysql.la \
		${DESTDIR}${SQLDRVDIR}

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

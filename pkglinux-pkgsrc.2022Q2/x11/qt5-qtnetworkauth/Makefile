# $NetBSD: Makefile,v 1.25 2022/04/18 11:18:16 adam Exp $

DISTNAME=	qtnetworkauth-everywhere-opensource-src-${QTVERSION}
PKGNAME=	qt5-qtnetworkauth-${QTVERSION}
COMMENT=	Qt5 module for networkauth framework

BUILD_TARGET=		sub-src
INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}
INSTALLATION_DIRS+=	lib/pkgconfig

.include "../../x11/qt5-qtbase/Makefile.common"

post-install:
.for i in Qt5NetworkAuth.pc
	cd ${DESTDIR}${PREFIX}/lib/pkgconfig && \
	${LN} -f -s ${QTPREFIX}/lib/pkgconfig/${i} ${i}
.endfor

.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

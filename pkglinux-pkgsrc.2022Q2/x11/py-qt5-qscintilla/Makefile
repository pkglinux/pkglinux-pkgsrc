# $NetBSD: Makefile,v 1.14 2022/04/18 19:10:17 adam Exp $

PKGREVISION= 5
.include "../../x11/qt5-qscintilla/Makefile.common"

PKGNAME=	${PYPKGPREFIX}-qt5-${DISTNAME:tl}
COMMENT=	QScintilla -- Python bindings

BUILD_DIRS=	Python
PY_PATCHPLIST=	yes

MAKE_FLAGS+=		TARGET=Qsci.la TARGETD=Qsci.la TARGETL=Qsci.la
INSTALL_MAKE_FLAGS+=	INSTALL_ROOT=${DESTDIR}
LIBS+=			-lqscintilla2
MAKE_FLAGS+=		LDFLAGS=${LDFLAGS:Q}\ ${LIBS:Q}

do-configure:
	cd ${WRKSRC}/Python && ${SETENV} ${MAKE_ENV} ${PYTHONBIN} configure.py \
		--pyqt PyQt5 \
		--qmake=${QTDIR}/bin/qmake \
		--sip=${PREFIX}/bin/sip${PYVERSSUFFIX} \
		--pyqt-sipdir=${PREFIX}/share/sip${PYVERSSUFFIX}/PyQt5 \
		--qsci-sipdir=${PREFIX}/share/sip${PYVERSSUFFIX}/PyQt5 \
		--qsci-libdir=${QTDIR}/lib \
		--apidir=${QTDIR}/qsci${PYVERSSUFFIX}

.include "../../lang/python/extension.mk"
.include "../../x11/py-sip/buildlink3.mk"
.include "../../x11/py-qt5/buildlink3.mk"
BUILDLINK_API_DEPENDS.qt5-qscintilla+=	qt5-qscintilla>=${PKGVERSION_NOREV}
.include "../../x11/qt5-qscintilla/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.19 2022/04/18 19:12:01 adam Exp $

PKGNAME=	qca2-qt5-ossl-${DISTNAME:C/.*-//}
PKGREVISION=	10

COMMENT=	Cross-platform crypto API for QT5 - OpenSSL plugin

.include "../../security/qca2/Makefile.common"

BUILD_DIRS=	plugins/qca-ossl

CMAKE_ARGS+=	-DBUILD_PLUGINS=ossl
CMAKE_ARGS+=	-DBUILD_TOOLS=OFF
CMAKE_ARGS+=	-DINST_QCA_LIB_NAME=-lqca-qt5

SUBST_CLASSES+=		libname
SUBST_STAGE.libname=	pre-configure
SUBST_MESSAGE.libname=	Use installed lib.
SUBST_FILES.libname=	plugins/qca-ossl/CMakeLists.txt
SUBST_SED.libname=	-e 's:{QCA_LIB_NAME}:{INST_QCA_LIB_NAME}:'

.include "../../security/qca2-qt5/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

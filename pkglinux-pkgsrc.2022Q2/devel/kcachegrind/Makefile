# $NetBSD: Makefile,v 1.52 2022/04/18 19:10:51 adam Exp $

DISTNAME=	kcachegrind-${KAPPSVER}
PKGREVISION=	7
CATEGORIES=	devel

HOMEPAGE=	https://kde.org/applications/development/kcachegrind/
COMMENT=	Visualization of Performance Profiling Data
LICENSE=	gnu-gpl-v2 AND gnu-fdl-v1.2

.include "../../meta-pkgs/kde/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge perl:run

REPLACE_PERL+=	converters/dprof2calltree
REPLACE_PERL+=	converters/memprof2calltree
REPLACE_PERL+=	converters/op2calltree

# REPLACE_PHP+= converters/pprof2calltree
SUBST_CLASSES+=		php
SUBST_MESSAGE.php=	Fixing PHP path
SUBST_STAGE.php=	post-configure
SUBST_FILES.php=	converters/pprof2calltree
SUBST_SED.php=		-e 's,/usr/bin/env php,${PREFIX}/bin/php,'

REPLACE_PYTHON+=	converters/hotshot2calltree.cmake

.include "../../lang/php/phpversion.mk"
.include "${PHPPKGSRCDIR}/buildlink3.mk"

.include "../../devel/kio/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

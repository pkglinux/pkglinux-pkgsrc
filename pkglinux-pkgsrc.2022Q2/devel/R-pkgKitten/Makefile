# $NetBSD: Makefile,v 1.4 2021/11/29 10:30:33 mef Exp $

R_PKGNAME=	pkgKitten
R_PKGVER=	0.2.2
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Create Simple Packages Which Do not Upset R Package Checks
LICENSE=	gnu-gpl-v2 OR gnu-gpl-v3

TEST_DEPENDS+=	R-roxygen2-[0-9]*:../../devel/R-roxygen2
TEST_DEPENDS+=	R-tinytest-[0-9]*:../../devel/R-tinytest
TEST_DEPENDS+=	R-whoami-[0-9]*:../../devel/R-whoami

USE_LANGUAGES=	# none

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"

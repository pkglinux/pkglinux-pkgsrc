# $NetBSD: Makefile,v 1.4 2022/04/30 00:49:18 mef Exp $

R_PKGNAME=	pkgload
R_PKGVER=	1.2.4
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Simulate package installation and attach
LICENSE=	gnu-gpl-v3

DEPENDS+=	R-desc>=1.2.0:../../devel/R-desc
DEPENDS+=	R-pkgbuild>=1.0.4:../../devel/R-pkgbuild
DEPENDS+=	R-rlang>=0.4.0:../../devel/R-rlang
DEPENDS+=	R-rprojroot>=1.3.2:../../devel/R-rprojroot
DEPENDS+=	R-withr>=2.1.2:../../devel/R-withr
DEPENDS+=	R-rstudioapi>=0.10:../../math/R-rstudioapi

TEST_DEPENDS+=	R-Rcpp-[0-9]*:../../devel/R-Rcpp
TEST_DEPENDS+=	R-bitops-[0-9]*:../../math/R-bitops
TEST_DEPENDS+=	R-callr-[0-9]*:../../devel/R-callr
TEST_DEPENDS+=	R-covr-[0-9]*:../../devel/R-covr
TEST_DEPENDS+=	R-testthat-[0-9]*:../../devel/R-testthat

USE_LANGUAGES=	c c++

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.2 2022/04/29 11:57:28 mef Exp $

R_PKGNAME=	pak
R_PKGVER=	0.3.0
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Another Approach to Package Installation
LICENSE=	gnu-gpl-v3

DEPENDS+=	R-base64enc>=0.1.3:../../converters/R-base64enc
DEPENDS+=	R-assertthat>=0.2.1:../../devel/R-assertthat
DEPENDS+=	R-callr>=3.0.0.9002:../../devel/R-callr
DEPENDS+=	R-cli>=1.0.0:../../devel/R-cli
DEPENDS+=	R-cliapp>=0.0.0.9002:../../devel/R-cliapp
DEPENDS+=	R-crayon>=1.3.4:../../devel/R-crayon
DEPENDS+=	R-desc>=1.2.0:../../devel/R-desc
DEPENDS+=	R-glue>=1.3.0:../../devel/R-glue
DEPENDS+=	R-lpSolve-[0-9]*:../../devel/R-lpSolve
DEPENDS+=	R-pkgbuild>=1.0.2:../../devel/R-pkgbuild
DEPENDS+=	R-rematch2>=2.1.2:../../devel/R-rematch2
DEPENDS+=	R-rprojroot>=1.3.2:../../devel/R-rprojroot
DEPENDS+=	R-pkgcache-[0-9]*:../../devel/R-pkgcache
DEPENDS+=	R-prettyunits>=1.0.2:../../math/R-prettyunits
DEPENDS+=	R-tibble>=2.1.3:../../math/R-tibble
DEPENDS+=	R-processx>=3.2.1:../../sysutils/R-processx
DEPENDS+=	R-ps>=1.3.0:../../sysutils/R-ps
DEPENDS+=	R-jsonlite>=1.7.1:../../textproc/R-jsonlite
DEPENDS+=	R-curl>=3.2:../../www/R-curl

# Packages suggested but not available:
#  'distro', 'gitcreds', 'pkgdepends', 'pkgsearch'
TEST_DEPENDS+=	R-covr-[0-9]*:../../devel/R-covr
TEST_DEPENDS+=	R-mockery-[0-9]*:../../devel/R-mockery
TEST_DEPENDS+=	R-pingr-[0-9]*:../../net/R-pingr
TEST_DEPENDS+=	R-rstudioapi-[0-9]*:../../math/R-rstudioapi
TEST_DEPENDS+=	R-testthat-[0-9]*:../../devel/R-testthat

USE_LANGUAGES=	# none

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"

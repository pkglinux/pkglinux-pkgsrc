# $NetBSD: Makefile,v 1.15 2022/05/02 14:47:49 mef Exp $

R_PKGNAME=	testthat
R_PKGVER=	3.1.4
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Unit testing for R
LICENSE=	mit

DEPENDS+=	R-R6>=2.4.0:../../devel/R-R6
DEPENDS+=	R-cli>=3.3.0:../../devel/R-cli
DEPENDS+=	R-crayon>=1.3.4:../../devel/R-crayon
DEPENDS+=	R-evaluate>=0.14:../../devel/R-evaluate
DEPENDS+=	R-magrittr>=1.5:../../devel/R-magrittr
DEPENDS+=	R-rlang>=1.0.1:../../devel/R-rlang
DEPENDS+=	R-withr>=2.4.3:../../devel/R-withr
DEPENDS+=	R-praise>=1.0.0:../../misc/R-praise
DEPENDS+=	R-digest>=0.6.20:../../security/R-digest
DEPENDS+=	R-ellipsis>=0.2.0:../../math/R-ellipsis
DEPENDS+=	R-pkgload-[0-9]*:../../devel/R-pkgload
DEPENDS+=	R-brio-[0-9]*:../../devel/R-brio
DEPENDS+=	R-waldo>=0.4.0:../../devel/R-waldo
DEPENDS+=	R-ps>=1.5.0:../../sysutils/R-ps
DEPENDS+=	R-lifecycle-[0-9]*:../../devel/R-lifecycle
DEPENDS+=	R-jsonlite-[0-9]*:../../textproc/R-jsonlite

TEST_DEPENDS+=	R-devtools-[0-9]*:../../devel/R-devtools
TEST_DEPENDS+=	R-rematch2-[0-9]*:../../devel/R-rematch2
TEST_DEPENDS+=	R-mockery-[0-9]*:../../devel/R-mockery
TEST_DEPENDS+=	R-diffviewer>=0.1.1:../../www/R-diffviewer
TEST_DEPENDS+=	R-callr>=3.5.1:../../devel/R-callr
TEST_DEPENDS+=	tex-inconsolata-[0-9]*:../../fonts/tex-inconsolata
TEST_DEPENDS+=	R-brio-[0-9]*:../../devel/R-brio
TEST_DEPENDS+=	R-desc-[0-9]*:../../devel/R-desc

USE_LANGUAGES=	c c++

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
TEST_DEPENDS+=	R-rmarkdown-[0-9]*:../../textproc/R-rmarkdown

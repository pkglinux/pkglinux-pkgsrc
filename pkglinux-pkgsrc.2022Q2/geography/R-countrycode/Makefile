# $NetBSD: Makefile,v 1.7 2022/05/02 12:10:56 mef Exp $

R_PKGNAME=	countrycode
R_PKGVER=	1.3.1
CATEGORIES=	geography

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Convert country names and country codes
LICENSE=	gnu-gpl-v3

TEST_DEPENDS+=	R-testthat-[0-9]*:../../devel/R-testthat
TEST_DEPENDS+=	R-tibble-[0-9]*:../../math/R-tibble
TEST_DEPENDS+=	R-utf8-[0-9]*:../../textproc/R-utf8

USE_LANGUAGES=	# none

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"

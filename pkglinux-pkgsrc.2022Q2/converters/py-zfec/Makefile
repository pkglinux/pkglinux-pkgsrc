# $NetBSD: Makefile,v 1.32 2022/04/29 23:29:17 wiz Exp $

DISTNAME=	zfec-1.5.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	converters python
MASTER_SITES=	${MASTER_SITE_PYPI:=z/zfec/}

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	https://github.com/tahoe-lafs/zfec
COMMENT=	Efficient, portable erasure coding tool
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat
DEPENDS+=	${PYPKGPREFIX}-pyutil>=3.0.0:../../devel/py-pyutil
TEST_DEPENDS+=	${PYPKGPREFIX}-setuptools_trial-[0-9]*:../../devel/py-setuptools_trial
TEST_DEPENDS+=	${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted

PYTHON_VERSIONS_INCOMPATIBLE=	27

REPLACE_PYTHON+=	zfec/cmdline_zfec.py
REPLACE_PYTHON+=	zfec/cmdline_zunfec.py
REPLACE_PYTHON+=	zfec/test/test_zfec.py

USE_PKG_RESOURCES=	yes

post-install:
.for bin in zfec zunfec
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} ${bin} ${bin}-${PYVERSSUFFIX} || ${TRUE}
.endfor

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.2 2022/01/04 20:53:33 wiz Exp $

PKGREVISION= 1
.include "../../devel/py-pyobjc/Makefile.common"

DISTNAME=	pyobjc-framework-Vision-${PYOBJC_VERS}
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyobjc-framework-Vision/}

COMMENT=	Bridge between Python and Objective-C (Vision framework)

USE_LANGUAGES=	c objc

DEPENDS+=	${PYPKGPREFIX}-pyobjc-core>=${PYOBJC_VERS}:../../devel/py-pyobjc-core
DEPENDS+=	${PYPKGPREFIX}-pyobjc-framework-Cocoa>=${PYOBJC_VERS}:../../devel/py-pyobjc-framework-Cocoa
DEPENDS+=	${PYPKGPREFIX}-pyobjc-framework-CoreML>=${PYOBJC_VERS}:../../devel/py-pyobjc-framework-CoreML
DEPENDS+=	${PYPKGPREFIX}-pyobjc-framework-Quartz>=${PYOBJC_VERS}:../../devel/py-pyobjc-framework-Quartz

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.5 2022/01/05 20:47:35 wiz Exp $

DISTNAME=	Cheetah3-3.2.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/Cheetah3/cheetah/}
PKGREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=C/Cheetah3/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://cheetahtemplate.org/
COMMENT=	Template engine and code generation tool
LICENSE=	mit

CONFLICTS=	Cheetah-[0-9]*

REPLACE_PYTHON+=	Cheetah/CheetahWrapper.py
REPLACE_PYTHON+=	Cheetah/DirectiveAnalyzer.py
REPLACE_PYTHON+=	Cheetah/Filters.py
REPLACE_PYTHON+=	Cheetah/NameMapper.py
REPLACE_PYTHON+=	Cheetah/Servlet.py
REPLACE_PYTHON+=	Cheetah/Templates/SkeletonPage.py
REPLACE_PYTHON+=	Cheetah/Tests/CheetahWrapper.py
REPLACE_PYTHON+=	Cheetah/Tests/Performance.py
REPLACE_PYTHON+=	Cheetah/Tests/SyntaxAndOutput.py
REPLACE_PYTHON+=	Cheetah/Tests/Test.py
REPLACE_PYTHON+=	Cheetah/Tools/SiteHierarchy.py
REPLACE_PYTHON+=	Cheetah/Version.py

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} cheetah cheetah-${PYVERSSUFFIX} && \
	${MV} cheetah-analyze cheetah-analyze-${PYVERSSUFFIX} && \
	${MV} cheetah-compile cheetah-compile-${PYVERSSUFFIX} || ${TRUE}

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_PKG_RESOURCES=	yes

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

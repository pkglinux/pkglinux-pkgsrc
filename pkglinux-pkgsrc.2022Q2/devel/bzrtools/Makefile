# $NetBSD: Makefile,v 1.34 2022/01/10 21:29:05 wiz Exp $

PKGNAME=	bzrtools-${VER}
PKGREVISION=	3
DISTNAME=	bzrtools-${VER:R}
CATEGORIES=	devel scm
MASTER_SITES=	http://launchpad.net/bzrtools/stable/${VER:R}/+download/
VER=		2.5.0

MAINTAINER=	ddeus.pkgsrc@mailnull.com
HOMEPAGE=	http://bazaar-vcs.org/BzrTools
COMMENT=	Collection of plugins for Bazaar
LICENSE=	gnu-gpl-v2

REPLACE_PYTHON=	check-release.py test.py
PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 2.5.0

WRKSRC=		${WRKDIR}/bzrtools

USE_LANGUAGES=	#none

EGG_NAME=	BzrTools-${PKGVERSION_NOREV}

.include "../../devel/bzr/plugin.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

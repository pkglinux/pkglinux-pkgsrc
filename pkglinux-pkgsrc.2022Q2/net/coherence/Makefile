# $NetBSD: Makefile,v 1.24 2022/02/13 08:53:44 wiz Exp $

DISTNAME=	Coherence-0.6.6.2
PKGNAME=	coherence-0.6.6.2
PKGREVISION=	6
CATEGORIES=	net
#MASTER_SITES=	http://coherence.beebits.net/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/coherence-project/Coherence
COMMENT=	Media server framework

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted19

PYTHON_VERSIONS_ACCEPTED=	27 # as of 0.6.6.2

USE_PKG_RESOURCES=	yes

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

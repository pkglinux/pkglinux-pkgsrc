# $NetBSD: Makefile,v 1.23 2021/08/31 15:37:35 taca Exp $

DISTNAME=	addressable-2.8.0
CATEGORIES=	net

MAINTAINER=	tsutsui@NetBSD.org
HOMEPAGE=	https://github.com/sporkmonger/addressable
COMMENT=	Replacement for the URI Implementation of standard librrary
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-public_suffix>=2.0.2:../../net/ruby-public_suffix

USE_LANGUAGES=	# none

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

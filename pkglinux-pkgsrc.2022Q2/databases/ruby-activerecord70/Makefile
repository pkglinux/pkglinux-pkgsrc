# $NetBSD: Makefile,v 1.3 2022/03/27 06:43:11 wiz Exp $

DISTNAME=	activerecord-${RAILS_VERSION}
PKGNAME=	${RUBY_PKGPREFIX}-activerecord${RUBY_RAILS}-${RAILS_VERSION}
CATEGORIES=	databases

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Object-relational mapper framework (part of Rails 7.0)
LICENSE=	mit

DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_ACTIVEMODEL_DEPENDS}

USE_LANGUAGES=	# none

RUBY_RAILS_ACCEPTED=	70
RUBY_RAILS_STRICT_DEP=	yes

RUBY_VERSIONS_INCOMPATIBLE=	26

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

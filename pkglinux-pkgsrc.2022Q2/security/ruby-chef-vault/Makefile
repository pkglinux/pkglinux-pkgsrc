# $NetBSD: Makefile,v 1.5 2021/12/19 06:41:31 taca Exp $

DISTNAME=	chef-vault-4.1.5
CATEGORIES=	security

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/chef/chef-vault
COMMENT=	Data encryption support for Chef Infra using data bags
LICENSE=	apache-2.0

USE_LANGUAGES=	# none

RUBYGEM_OPTIONS+=	--format-executable

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

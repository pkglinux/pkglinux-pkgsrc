# $NetBSD: Makefile,v 1.8 2022/05/28 10:14:22 taca Exp $
#

MODNAME=	mcrypt
PECL_VERSION=	1.0.5
PKGNAME=	${PHP_PKG_PREFIX}-pecl-${MODNAME}-${PECL_VERSION}
CATEGORIES=	security

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pecl.php.net/package/mcrypt
COMMENT=	Bindings for the libmcrypt library
LICENSE=	php

PHP_VERSIONS_INCOMPATIBLE=	56

CONFIGURE_ARGS+=	--with-mcrypt=${PREFIX}

.include "../../security/libmcrypt/buildlink3.mk"
.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"

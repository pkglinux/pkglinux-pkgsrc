# $NetBSD: Makefile,v 1.10 2021/12/29 06:05:18 taca Exp $

MODNAME=		json
CATEGORIES+=		textproc
COMMENT=		PHP extension for JSON serialization support

USE_LANGUAGES+=		c c++
USE_TOOLS+=		yacc

BUILD_DEPENDS+=		re2c>=0.13.0.4:../../devel/re2c

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared

PHP_VERSIONS_ACCEPTED=	56 74

.include "../../lang/php/ext.mk"

INSTALLATION_DIRS+=	include/php/ext/json
JSON_INCLUDES=		php_json.h
PLIST_SRC+=		${.CURDIR}/../../textproc/php-json/PLIST

MAKE_ENV+=		RE2C=re2c

post-install:
	${INSTALL_DATA} ${WRKSRC}/${JSON_INCLUDES} \
	    ${DESTDIR}${PREFIX}/include/php/ext/json/${JSON_INCLUDES}

.include "../../mk/bsd.pkg.mk"

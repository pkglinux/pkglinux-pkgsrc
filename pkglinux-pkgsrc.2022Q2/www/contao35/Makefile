# $NetBSD: Makefile,v 1.51 2021/12/29 06:05:18 taca Exp $
#

DISTNAME=	contao-${CT_PKGVER}
PKGNAME=	${PHP_PKG_PREFIX}-contao${CT_VER}-${CT_PKGVER}
PKGREVISION=	1
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GITHUB:=contao/}
GITHUB_PROJECT=	core
GITHUB_RELEASE=	${CT_VERSION}

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	https://contao.org/
COMMENT=	Contao Open Source CMS ${CT_VERSION}
LICENSE=	gnu-lgpl-v3

DEPENDS+=	${PHP_PKG_PREFIX}-gd>=5.4.0:../../graphics/php-gd
DEPENDS+=	${PHP_PKG_PREFIX}-mbstring>=5.4.0:../../converters/php-mbstring
DEPENDS+=	${PHP_PKG_PREFIX}-mysqli>=5.4.0:../../databases/php-mysqli
DEPENDS+=	${PHP_PKG_PREFIX}-soap>=5.4.0:../../net/php-soap
DEPENDS+=	${PHP_PKG_PREFIX}-curl>=5.4.0:../../www/php-curl
DEPENDS+=	${PHP_PKG_PREFIX}-zlib>=5.4.0:../../archivers/php-zlib

PHP_VERSIONS_ACCEPTED=	56 74

CT_VERSION=	3.5.40
USE_TOOLS=	bash:run pax
NO_BUILD=	yes

EG_CONFIG=	ace.php agents.php constants.php countries.php \
		languages.php mimetypes.php tcpdf.php timezones.php \
		tinyFlash.php tinyMCE.php tinyNews.php
EG_DATA=	${WWW_EG_FILES} system/config files
EG_TEMPLATES=	tinymce.css tiny_templates/index.html
WWW_EG_FILES=	robots.txt
RESTRICT_DIRS=	system/config system/cache system/logs system/tmp templates \
		files

CONF_FILES+=	${CT_EGDIR}/contao.conf ${PKG_SYSCONFDIR}/contao.conf

.for f in ${EG_CONFIG}
CONF_FILES+=	${CT_EGDIR}/system/config/${f} ${CT_WEBDIR}/system/config/${f}
.endfor

MAKE_DIRS+=	${CT_WEBDIR}/files/tiny_templates

REPLACE_BASH=	system/bin/minify system/bin/sqldump

.for f in ${EG_TEMPLATES}
REQD_FILES+=	${CT_EGDIR}/files/${f} ${CT_WEBDIR}/files/${f}
.endfor

.for f in ${WWW_EG_FILES}
REQD_FILES+=	${CT_EGDIR}/${f} ${CT_WEBDIR}/${f}
.endfor

.for d in ${RESTRICT_DIRS}
OWN_DIRS_PERMS+=	${CT_WEBDIR}/${d} ${APACHE_USER} ${APACHE_GROUP} 0770
.endfor

REPLACE_INTERPRETER+=	php
REPLACE.php.old=	.*php[^ ]*
REPLACE.php.new=	${PREFIX}/bin/php
REPLACE_FILES.php=	system/bin/automator system/bin/filesync \
			system/bin/ide_compat system/bin/txpurge system/bin/version \
			vendor/bin/lessc vendor/bin/minifycss vendor/bin/minifyjs \
			vendor/bin/pscss vendor/leafo/scssphp/bin/pscss \
			vendor/matthiasmullie/minify/bin/minifycss \
			vendor/matthiasmullie/minify/bin/minifyjs \
			vendor/oyejorge/less.php/bin/lessc \
			vendor/swiftmailer/swiftmailer/lib/swiftmailer_generate_mimes_config.php \
			vendor/tecnickcom/tcpdf/tools/tcpdf_addfont.php

SUBST_CLASSES+=		conf
SUBST_FILES.conf+=	${WRKDIR}/contao.conf
SUBST_VARS.conf+=	PREFIX CT_WEBDIR
SUBST_STAGE.conf=	post-configure

WWW_FILES=	.htaccess.default README.md assets contao \
		index.php share templates vendor
WWW_SYSFILES=	.htaccess bin config/default.php cron docs helper \
		initialize.php modules themes

INSTALLATION_DIRS+=	${CT_DOCDIR} ${CT_EGDIR} ${CT_WEBDIR}/system/config

.include "../../lang/php/phpversion.mk"

.if ${PKG_PHP_VERSION} < 71
DEPENDS+=	${PHP_PKG_PREFIX}-mcrypt>=5.4.0:../../security/php-mcrypt
.else
DEPENDS+=	${PHP_PKG_PREFIX}-pecl-mcrypt>=1.0.1:../../security/php-pecl-mcrypt
.endif

PKG_GROUPS_VARS+=	APACHE_GROUP
PKG_USERS_VARS+=	APACHE_USER

pre-configure:
	${CP} ${FILESDIR}/contao.conf ${WRKDIR}
	${CHMOD} -x \
	    ${WRKSRC}/vendor/oyejorge/less.php/lib/Less/Less.php.combine \
	    ${WRKSRC}/vendor/simplepie/simplepie/.travis.yml \
	    ${WRKSRC}/vendor/simplepie/simplepie/library/SimplePie.php \
	    ${WRKSRC}/vendor/simplepie/simplepie/library/SimplePie/Cache/Memcached.php \
	    ${WRKSRC}/vendor/simplepie/simplepie/library/SimplePie/Registry.php

pre-install:
	${FIND} ${WRKSRC} -name "*.orig*" -exec ${RM} -f {} \;

do-install:
	cd ${WRKSRC}; pax -rw ${WWW_FILES} ${DESTDIR}${PREFIX}/${CT_WEBDIR}
	cd ${WRKSRC}/system; \
		pax -rw ${WWW_SYSFILES} \
			${DESTDIR}${PREFIX}/${CT_WEBDIR}/system
	cd ${WRKSRC}; pax -rw ${EG_DATA} ${DESTDIR}${PREFIX}/${CT_EGDIR}
	${INSTALL_DATA} ${WRKDIR}/contao.conf ${DESTDIR}${PREFIX}/${CT_EGDIR}
	${INSTALL_DATA} ${FILESDIR}/README \
		${DESTDIR}${PREFIX}/${CT_DOCDIR}

.include "../../www/contao/Makefile.common"
.include "../../lang/php/phpversion.mk"
.include "../../mk/bsd.pkg.mk"

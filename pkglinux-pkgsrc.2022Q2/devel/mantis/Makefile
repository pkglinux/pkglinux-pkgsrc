# $NetBSD: Makefile,v 1.60 2022/04/25 17:24:50 christos Exp $

DISTNAME=	mantisbt-2.25.3
PKGNAME=	${PHP_PKG_PREFIX}-${DISTNAME:S/mantisbt/mantis/}
CATEGORIES=	devel www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mantisbt/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.mantisbt.org/
COMMENT=	PHP/MySQL/web based bugtracking system
LICENSE=	gnu-gpl-v2

NO_BUILD=	YES

USE_TOOLS+=	bash:run pax

APACHE_USER?=		www
BUILD_DEFS+=		APACHE_USER

PKG_USERS_VARS+=	APACHE_USER
MESSAGE_SUBST+=		PKG_SYSCONFDIR=${PKG_SYSCONFDIR}

MANTIS_HOME=		${PREFIX}/share/mantis
EGDIR=			${PREFIX}/share/examples/mantis
CONF_FILES+=		${EGDIR}/mantis.conf ${PKG_SYSCONFDIR}/mantis.conf
CONF_FILES_PERMS+=	${EGDIR}/config_inc.php \
			${MANTIS_HOME}/config/config_inc.php \
			${APACHE_USER} ${SHAREGRP} 0400
MANTIS_EG=		config_inc.php mantis.conf mantis_offline.php.sample

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-install
SUBST_FILES.conf=	mantis.conf
SUBST_VARS.conf=	MANTIS_HOME
SUBST_MESSAGE.conf=	Fixing configuration files.

REPLACE_INTERPRETER+=	php
REPLACE.php.old=	/usr/bin/php
REPLACE.php.new=	${PREFIX}/bin/php
REPLACE_FILES.php=	scripts/*.php

INSTALLATION_DIRS+=	share/doc/mantis ${EGDIR} ${MANTIS_HOME}

.include "options.mk"

post-extract:
	${CP} ${FILESDIR}/mantis.conf ${WRKSRC}

do-install:
	cd ${WRKSRC}/doc && \
		pax -rwppm en-US ${DESTDIR}${PREFIX}/share/doc/mantis

	${MV} ${WRKSRC}/config/config_inc.php.sample \
		${WRKSRC}/config_inc.php

.for f in ${MANTIS_EG}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${EGDIR}
	${RM} ${WRKSRC}/${f}
.endfor

	cd ${WRKSRC} && ${FIND} . -name .cvsignore -print | ${XARGS} ${RM} -f
	cd ${WRKSRC} && pax -rwppm . ${DESTDIR}${MANTIS_HOME}

	cd ${DESTDIR}${MANTIS_HOME} && \
		${FIND} . -type f | ${XARGS} ${CHMOD} ${SHAREMODE}

.include "../../lang/php/json.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.9 2021/12/19 15:43:07 taca Exp $

DISTNAME=	${GITHUB_TAG}
PKGNAME=	${RUBY_PKGPREFIX}-redmine${RM_VER}-gitmike-theme-${DISTNAME:S/v//1}
MASTER_SITES=	${MASTER_SITE_GITHUB:=makotokw/}
GITHUB_PROJECT=	redmine-theme-gitmike
GITHUB_TAG=	v1.2.1
DIST_SUBDIR=	ruby-redmine-gitmike-theme

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/makotokw/redmine-theme-gitmike
COMMENT=	Github-like theme for Redmine
LICENSE=	gnu-gpl-v3

.include "../../meta-pkgs/ruby-redmine-themes/Makefile.common"

GITMIKE_DIR=		${RM_THEMEDIR}/gitmike

INSTALLATION_DIRS+=	${GITMIKE_DIR}/images ${GITMIKE_DIR}/sass
INSTALLATION_DIRS+=	${GITMIKE_DIR}/stylesheets

do-install:
	${INSTALL_DATA} ${WRKSRC}/gulpfile.js \
		${DESTDIR}${PREFIX}/${GITMIKE_DIR}
	${INSTALL_DATA} ${WRKSRC}/package.json \
		${DESTDIR}${PREFIX}/${GITMIKE_DIR}
	for i in images sass stylesheets; do \
		${INSTALL_DATA} ${WRKSRC}/$$i/* \
			${DESTDIR}${PREFIX}/${GITMIKE_DIR}/$$i; \
	done

.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"
